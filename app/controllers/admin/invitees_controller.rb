module Admin
  class InviteesController < BaseController
    before_action :set_test
    before_action :set_invitee, only: [:show, :edit, :update, :destroy, :resend_invitation]

    def index
      @invitees = @test.invitees.includes(:assignments)
                       .order(created_at: :desc)
                       .page(params[:page])
      @invitee = Invitee.new
    end

    def new
      @invitee = @test.invitees.new
    end

    def show
    end

    def create
      @invitee = Invitee.find_or_initialize_by(email: invitee_params[:email]) do |i|
        i.assign_attributes(invitee_params)
      end

      if @invitee.save
        @test.invitees << @invitee unless @test.invitees.include?(@invitee)
        redirect_to admin_test_invitees_path(@test), notice: 'Invitee was successfully added.'
      else
        @invitees = @test.invitees.includes(:assignments)
                         .order(created_at: :desc)
                         .page(params[:page])
        render :index, status: :unprocessable_entity
      end
    end

    def update
      if @invitee.update(invitee_params)
        redirect_to admin_test_invitees_path(@test), notice: 'Invitee was successfully updated.'
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @invitee = @test.invitees.find(params[:id])
      @test.invitees.delete(@invitee)
      redirect_to admin_test_invitees_path(@test), notice: 'Invitee was successfully removed.'
    end

    def resend_invitation
      @invitee.resend_invitation_email!
      redirect_to admin_test_invitees_path(@test), notice: 'Invitation was successfully resent.'
    end

    private

    def set_test
      @test = current_admin_user.tests.find(params[:test_id])
    end

    def set_invitee
      @invitee = @test.invitees.find(params[:id])
    end

    def invitee_params
      params.require(:invitee).permit(:email, :name, :notes, :expires_at)
    end
  end
end 