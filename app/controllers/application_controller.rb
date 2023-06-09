class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :name,:handle,  :password, :password_confirmation])
    end
    def access_denied(exception)
        redirect_to root_path, alert: exception.message
    end
end
