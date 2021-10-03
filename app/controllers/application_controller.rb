class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_perameters, if: :devise_controller?

  private

  def configure_perameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
