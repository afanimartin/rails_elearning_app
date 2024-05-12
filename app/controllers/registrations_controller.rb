class RegistrationsController < Devise::RegistrationsController
  private
    def sign_up_params
      params.require(:user).permit(:email, :password, :password_confirmation, :school_id).merge(role: 0)
    end

    def account_update_params
      params.require(:user).permit(:first_name, :last_name, :gender, :phone, :bio, :date_of_birth, :current_password).merge(completed: true)
    end
end