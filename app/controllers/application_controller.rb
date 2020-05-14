class ApplicationController < ActionController::Base
    # before_action :authenticate_user!

    # before_action :check_user_profile, except [:edit, :update, :destroy, :create]

    # def check_user_profile()
    #     if user_signed_in?
    #         if current_user.name == nil
    #             redirect_to edit_user_path(current_user)
    #         end
    #     end
    # end

end
