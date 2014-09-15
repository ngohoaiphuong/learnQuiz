module TeacherConcern
  extend ActiveSupport::Concern

  include RenderingConcern

  def ensure_is_teacher
    if current_user.role.downcase != 'teacher'
      render json: {code: 'You must is teacher if want use this function'}, status: 401
    end
  end
end