class RegistrationsController < Devise::RegistrationsController
  def new
    flash[:info] = 'Registrations is currently not possible.'
    redirect_to root_path
  end

  def create
    flash[:info] = 'Registrations is currently not possible.'
    redirect_to root_path
  end
end