class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)

    if user && user.authenticate(params[:session][:password])
      # Log in user
      reset_session
      log_in user
      redirect_to user
    else
      # Create error message
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new', status: :unprocessable_entity
    end

    # debugger
  end

  def destroy
    log_out
    redirect_to root_url, status: :see_other
  end
end
