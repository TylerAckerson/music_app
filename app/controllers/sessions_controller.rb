class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    user = User.find_by_credentials(
      params[:session][:user][:email],
      params[:session][:user][:password]
    )

    if user.nil?
      flash.now[:errors] = ["Incorrect username and/or password"]
      render :new
    else
      log_in!(user)
      redirect_to user_path(user)
    end
  end

  def destroy
    log_out!
    redirect_to new_session_url
  end
end
