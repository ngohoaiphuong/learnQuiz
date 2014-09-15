class Api::ResultsController < ApplicationController
  include RenderingConcern

  before_filter :ensure_valid_authencation_token

  def create    
    params[:user_id] = @current_user.id
    results = Results.where(user_id: params[:user_id], quiz_id: params[:quiz_id])
    if results.present?
      if !results[0].update_attributes(params)
        render_error('Update result failure')
        return
      end
    else
      if !Results.create(params)
        render_error('Create result failure')
        return
      end
    end
    render json: params
  end

  def index
    @results = Results.order('created_at asc')
  end

  protected
  def param_for_result
    params.slice(:user_id, :quiz_id, :answer)
  end
end