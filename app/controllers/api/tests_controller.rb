class Api::TestsController < ApplicationController
  include RenderingConcern

  before_filter :authenticate_user!
  before_filter :ensure_valid_authencation_token

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
end