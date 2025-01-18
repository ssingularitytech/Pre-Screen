module Admin
  class TopicsController < BaseController
    before_action :set_topic, only: [:show, :edit, :update, :destroy]

    def index
      @topics = current_admin_user.topics.includes(:questions)
                           .order(created_at: :desc)
                           .page(params[:page])
    end

    def show
      @questions = @topic.questions.order(created_at: :desc)
                        .page(params[:page])
    end

    def new
      @topic = current_admin_user.topics.build
    end

    def create
      @topic = current_admin_user.topics.build(topic_params)

      if @topic.save
        redirect_to [:admin, @topic], notice: 'Topic was successfully created.'
      else
        render :new, status: :unprocessable_entity
      end
    end

    def edit
    end

    def update
      if @topic.update(topic_params)
        redirect_to [:admin, @topic], notice: 'Topic was successfully updated.'
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @topic.destroy
      redirect_to admin_topics_url, notice: 'Topic was successfully deleted.'
    end

    private

    def set_topic
      @topic = current_admin_user.topics.find(params[:id])
    end

    def topic_params
      params.require(:topic).permit(:name, :description, :active)
    end
  end
end 