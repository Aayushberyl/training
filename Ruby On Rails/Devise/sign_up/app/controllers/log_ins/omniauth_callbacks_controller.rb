class CallbacksController < Devise::OmniauthCallbacksController
  def github 
    @user = LogIn.from_omniauth(request.env["omniauth.auth"])
    sign_in_and_redirect @user
  end
end