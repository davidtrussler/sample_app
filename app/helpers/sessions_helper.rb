module SessionsHelper
  # Log in a user
  def log_in(user)
    session[:user_id] = user.id
  end

  # Log out a user
  def log_out
    reset_session
    current_user = nil
  end

  # Find the current logged in user (if any)
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  # Return true if user is logged in, false if not
  def logged_in?
    !current_user.nil?
  end
end
