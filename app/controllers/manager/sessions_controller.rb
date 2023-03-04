# frozen_string_literal: true

class Manager::SessionsController < Devise::SessionsController
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :manager_status, only:[:create]

   def after_sign_in_path_for(resource)
     manager_enquiries_path
   end

   def after_sign_out_path_for(resource)
     manager_session_path
   end


   #before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])

  # end

  protected

  def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_in, keys: [:company_id, :password_confirmation, :email, :password])
  end

  def manager_status
   @manager = Manager.find_by(email: params[:manager][:email])
   return if !@manager
   if @manager.valid_password?(params[:manager][:password]) && @manager.is_deleted == true
    redirect_to new_manager_registration_path
   end
  end

end
