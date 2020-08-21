class UsersController < ApplicationController
  before_action :require_user_logged_in, only: [:show, :favorites]
  before_action :correct_user, only: [:favorites]
  
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
    @counts_ainmation = @user.favorite_movies.where(category: 0).count
    @counts_movie = @user.favorite_movies.where(category: 1).count
    
    @favorite_movies = @user.favorite_movies.order(hurigana: :asc).page(params[:page]).per(10)
    counts_from_user(@user)
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
  
  def correct_user
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to root_url
    end
  end
end
