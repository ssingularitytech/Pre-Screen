module Admin
  class TestsController < BaseController
    before_action :set_test, only: [:show, :edit, :update, :destroy, :results, :analytics, :send_bulk_invitations, :import_invitees]

    def index
      @tests = current_admin_user.tests.includes(:topics, :invitees)
                          .order(created_at: :desc)
                          .page(params[:page])
    end

    def show
      @test_topics = @test.test_topics.includes(:topic)
      @assignments = @test.assignments.includes(:invitee)
                         .order(created_at: :desc)
                         .page(params[:page])
    end

    def new
      @test = current_admin_user.tests.build
      @available_topics = current_admin_user.topics.active
    end

    def create
      @test = current_admin_user.tests.build(test_params)

      if @test.save
        redirect_to [:admin, @test], notice: 'Test was successfully created.'
      else
        @available_topics = current_admin_user.topics.active
        render :new, status: :unprocessable_entity
      end
    end

    def edit
      @available_topics = current_admin_user.topics.active
    end

    def update
      if @test.update(test_params)
        redirect_to [:admin, @test], notice: 'Test was successfully updated.'
      else
        @available_topics = current_admin_user.topics.active
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @test.destroy
      redirect_to admin_tests_url, notice: 'Test was successfully deleted.'
    end

    def results
      @assignments = @test.assignments.includes(:invitee)
                         .completed
                         .order(score: :desc)
                         .page(params[:page])
    end

    def send_bulk_invitations
      return redirect_to admin_test_path(@test), alert: 'You can only send invitations 5 minutes before the test starts.' if @test.start_at - 5.minutes > Time.now
      @test.invitees.each do |invitee|
        invitee.resend_invitation_email!
      end
      redirect_to admin_test_path(@test), notice: 'Invitations were successfully resent.'
    end

    def analytics
      @completion_rate = @test.completion_rate
      @average_score = @test.average_score
      @passing_count = @test.passing_count
      @total_invitees = @test.invitees.count
      
      @score_distribution = @test.assignments.completed.group("round(score/10) * 10").count
      @time_distribution = @test.assignments.completed
                               .select("extract(epoch from (completed_at - started_at))/60 as duration")
                               .group("round(extract(epoch from (completed_at - started_at))/60/10) * 10")
                               .count
    end

    def import_invitees
      require 'csv'

      if params[:file].nil?
        redirect_to admin_test_path(@test), alert: 'Please select a file to import.'
        return
      end

      begin
        invitees_data = CSV.parse(params[:file].read, headers: true)
        
        ActiveRecord::Base.transaction do
          invitees_data.each do |row|
            @test.invitees.create!(
              name: row['name'],
              email: row['email'],
              expires_at: @test.end_at
            )
          end
        end

        redirect_to admin_test_path(@test), notice: "Successfully imported #{invitees_data.count} invitees."
      rescue CSV::MalformedCSVError
        redirect_to admin_test_path(@test), alert: 'Invalid CSV file format.'
      rescue ActiveRecord::RecordInvalid => e
        redirect_to admin_test_path(@test), alert: "Error importing invitees: #{e.message}"
      end
    end

    private

    def set_test
      @test = current_admin_user.tests.find(params[:id])
    end

    def test_params
      params.require(:test).permit(
        :name,
        :description,
        :duration,
        :passing_score,
        :active,
        :start_at,
        :end_at,
        topic_ids: []
      )
    end
  end
end 