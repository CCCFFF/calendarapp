module ApplicationHelper

  def current_user
    return User.find_by(:id => session[:user_id])
  end

  helper_method :current_user

end
