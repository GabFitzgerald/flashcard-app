class ApplicationController < ActionController::Base
   
    before_action :educators_courses, :enrolled_courses

    private

    # accesses courses owned by current user for sidebar navigation on every page
    def educators_courses
        @courses = Course.where(user_id: 2).first(5)
        
        # @educators_courses = Course.where(user_id: @user.id)
    end

    # accessed users enrolled courses for quick sidebar navigation on every page
    def enrolled_courses

    end
end
