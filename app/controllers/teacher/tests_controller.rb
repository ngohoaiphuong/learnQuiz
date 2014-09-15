class Teacher::TestsController < ApplicationController
  include TeacherConcern

  before_filter :authenticate_user!
  before_filter :ensure_is_teacher

  def index
    @quizzes =  Quiz.order('created_at desc')
  end

  def show
    begin
      @quiz = Quiz.find(params[:id])    
    rescue
    end
    if !@quiz
      render json: {}
    end
  end

  def create
    quiz = Quiz.new(params_for_quiz)

    if quiz.save
      render nothing: true
      return
    end

    render json:{error: 'error while save'}, status: :unauthorized
  end

  def destroy
    quiz = Quiz.find_by_id(params[:id])
    if quiz
      quiz.destroy
      render nothing: true
      return
    end
    render nothing:true, status: :unauthorized
  end

  def update
    quiz = Quiz.find_by_id(params[:id])    
    if !quiz
      render json: {error: 'Can\'t found this Quiz need update.'}, status: :unauthorized  
      return
    end
    
    quiz.update_attributes(params_for_quiz)
    if quiz.errors.empty?
      render nothing: true
      return
    end

    render json: {error: quiz.errors.full_messages}, status: :unauthorized
  end

  protected
  def params_for_quiz
    params.slice(:name, :description, :questions)
  end
end