class Teacher::RegistrationsController < Devise::RegistrationsController
  include RenderingConcern

  respond_to :json

  def create
    @user = User.new(params_for_registration)

    if @user.save
      sign_in @user
      render nothing: true
      return
    end

    if @user.errors[:email].present? && User.where(email: @user.email).first
      render_error('email already taken')
      return
    end

    render_error(@user.errors.full_messages)
  end

  protected

  def params_for_registration
    params.slice(:email, :password, :password_confirmation, :username, :role)
  end
end