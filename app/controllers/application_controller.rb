class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters    
       devise_parameter_sanitizer.permit(:sign_in){|u|u.permit(:email, :password, :remember_me)}
       devise_parameter_sanitizer.permit(:sign_up){|u|u.permit(:email, :password, :password_confirmation, :title_id, :first_name, :last_name, :address, :additional_address, :city, :region, :postal_code, :phone_number, :country_id)}
  end
  
  
end
