class Users::RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :uername, :bio, :avatar)
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :uername, :bio, :avatar)
  end
end
