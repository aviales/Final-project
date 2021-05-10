class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :profile_picture])
  end
end
class ApplicationController < ActionController::Base
  # Tus métodos
  protected
  
  def authenticate_admin!
    unless current_user.present? && current_user.is_admin?
      flash[:danger] = "No tienes autorización para entrar en esa sección"
      redirect_to root_path
    end
  end
end


class HomeController < ApplicationController
  layout "home", only: [:index]
end