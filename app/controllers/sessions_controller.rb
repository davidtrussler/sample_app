class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)

    if user && user.authenticaate(params[:session][:password])
      # Log in user
    else
      # Create error message
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new', status: :unprocessable_entity
    end

    # debugger
  end

  def destroy
  end
end
