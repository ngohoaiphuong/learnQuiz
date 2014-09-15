class Api::SessionsController < ApplicationController
  include RenderingConcern
  respond_to :json

  def create
    user = User.find_for_database_authentication(email: params[:email])
    return invalid_login_attempt unless user

    if user.valid_password?(params[:password])
      sign_in('user', user)
      render json: {
        auth_token: user.authentication_token,
        email: user.email,
      }
      return
    end
    invalid_login_attempt
  end

  def logout
    sign_out('user')
    render nothing: true
  end

  protected

  def invalid_login_attempt
    warden.custom_failure!
    render_error('login failure', :unauthorized)
  end  
end