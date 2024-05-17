# app/controllers/sessions_controller.rb
class SessionsController < Devise::SessionsController
  def create
    self.resource = warden.authenticate!(auth_options)
    if resource.confirmed? # Check if email is confirmed
      set_flash_message!(:notice, :signed_in)
      sign_in(resource_name, resource)
      yield resource if block_given?
      respond_with resource, location: after_sign_in_path_for(resource)
    else
      set_flash_message!(:alert, :unconfirmed)
      redirect_to new_user_confirmation_path
    end
  end
end
