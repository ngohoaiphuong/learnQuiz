class Teacher::SessionsController < Devise::SessionsController
  include RenderingConcern

  def create
    user = User.find_for_database_authentication(email: params[:email])
    return invalid_login_attempt unless user

    if user.role.downcase != 'teacher'
      render_error('Can not login with account is role Student', :unauthorized)
      return
    end

    if user.valid_password?(params[:password])
      sign_in('user', user)
      render nothing: true
      return
    end

    invalid_login_attempt
  end

  def destroy
    sign_out('user')
    render nothing: true
  end

  protected

  def invalid_login_attempt
    warden.custom_failure!
    render_error('Invalid login')
  end
end