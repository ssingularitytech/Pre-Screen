module Admin
  class DashboardController < BaseController
    def index
      @total_tests = current_admin_user.tests.count
      @total_topics = current_admin_user.topics.count
      @total_questions = current_admin_user.questions.count
      @recent_tests = current_admin_user.tests.order(created_at: :desc).limit(5)
      @recent_invitees = current_admin_user.tests.flat_map(&:invitees).sort_by(&:created_at).reverse.first(5)
      @recent_assignments = current_admin_user.tests.flat_map(&:assignments).sort_by(&:created_at).reverse.first(5)
    end
  end
end 