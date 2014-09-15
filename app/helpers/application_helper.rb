module ApplicationHelper
  # for devise
  def resource_name
    :user
  end

  # for devise
  def resource
    @resource ||= User.new
  end

  # for devise
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
