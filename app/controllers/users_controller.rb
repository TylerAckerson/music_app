class UsersController < ApplicationController

  def index

  end

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new

    if @user.update(user_params)
      flash.notice = "user successfully created"
      redirect_to user_path(@user)
    else
      flash.now.alert = "user not created"
      render :new
    end
  end

  def show
    @user = User.find_by(id: params[:id])

    if @user.nil?
      flash.alert = "user not found"
      redirect_to new_user_url
    else
      render :show
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password )
  end
end
