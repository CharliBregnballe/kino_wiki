class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if:  :devise_controller?
  before_action :authenticate_user! 

  before_filter :redirect_subdomain

  def redirect_subdomain
    if request.host == 'www.wiki.kino.dk'
      redirect_to 'https://wiki.kino.dk' + request.full_path, :status => 301
    end
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :department])
    end
end
