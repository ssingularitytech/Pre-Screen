module Admin
  class QuestionsController < BaseController
    before_action :set_topic
    before_action :set_question, only: [:show, :edit, :update, :destroy]

    def index
      @questions = @topic.questions.order(created_at: :desc)
                        .page(params[:page])
    end

    def show
    end

    def new
      @question = @topic.questions.build
    end

    def create
      @question = @topic.questions.build(question_params)

      if @question.save
        redirect_to [:admin, @topic, @question], notice: 'Question was successfully created.'
      else
        render :new, status: :unprocessable_entity
      end
    end

    def edit
    end

    def update
      if @question.update(question_params)
        redirect_to [:admin, @topic, @question], notice: 'Question was successfully updated.'
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @question.destroy
      redirect_to admin_topic_questions_url(@topic), notice: 'Question was successfully deleted.'
    end

    private

    def set_topic
      @topic = current_admin_user.topics.find(params[:topic_id])
    end

    def set_question
      @question = @topic.questions.find(params[:id])
    end

    def question_params
      params.require(:question).permit(
        :question_text,
        :option_a,
        :option_b,
        :option_c,
        :option_d,
        :correct_answer,
        :active
      )
    end
  end
end 