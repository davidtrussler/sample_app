class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticaate(params[:session][:password])
      # Log in user
    if test
      # Create error message
    else
      render 'new', status: :unprocessable_entity
    end

    # debugger
  end

  def destroy
  end
end
