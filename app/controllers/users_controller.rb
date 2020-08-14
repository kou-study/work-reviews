class UsersController < ApplicationController
  before_action :require_user_logged_in, only: [:show, :favorites]
  
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      flash[:success] = 'ユーザを登録しました'
      redirect_to root_url
    else
      flash[:danger] = 'ユーザ登録に失敗しました'
      render :new
    end
  end
  
  def favorites
    @user = User.find(params[:id])
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
  
  def require_user_logged_in
    unless logged_in?
      redirect_to signup_path
    end
  end
end
