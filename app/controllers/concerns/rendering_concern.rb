module RenderingConcern
  extend ActiveSupport::Concern

  def render_error(validation_error, status=:bad_request)
    render json: {error: validation_error}, status: status
  end

  def ensure_valid_authencation_token
    @current_user =  User.where(authentication_token: params[:auth_token].to_s.strip).first
    render_error('The authentication token is invalid.', :unauthorized) unless @current_user
  end
end