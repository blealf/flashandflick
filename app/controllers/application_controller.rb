class ApplicationController < ActionController::Base
    def admin_user
      redirect_to root_path if !current_admin_user.present?
    end

    # def index
    #   @facebook = About.where(social: "Facebook").first
    #   @instagram = About.where(social: "Instagram").first
    #   @googleplus = About.where(social: "Google Plus").first
    #   @twitter= About.where(social: "Twitter").first
    # end
   
end
