class Teacher::UsersController < ApplicationController
  include TeacherConcern

  before_filter :authenticate_user!
  before_filter :ensure_is_teacher
  
  def index
    p '-------'
    p current_user
    p '-------'
    @users = User.order('role desc')
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def destroy
    user = User.find_by_id(params[:id])
    if user
      user.destroy
      render nothing: true
      return
    end
    render nothing:true, status: 401
  end

  def update
    user = User.find_by_id(params[:id])    
    if !user
      render_error('Can\'t found this user need update.')  
      return
    end
    
    user.update_attributes(resource_params)
    if user.errors.empty?
      render nothing: true
      return
    end

    render json: {error: user.errors.full_messages}, status: 401
  end

  protected

  def resource_params
    params.slice(:email, :username, :role)
  end    
end