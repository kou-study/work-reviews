class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    movie = Movie.find(params[:movie_id])
    current_user.favorite_add(movie)
    flash[:success] = '作品をお気に入り登録しました。'
    redirect_to favorites_user_url(current_user)
  end

  def destroy
    movie = Movie.find(params[:movie_id])
    current_user.unfavorite(movie)
    flash[:success] = '作品をお気に入りから外しました。'
    redirect_to favorites_user_url(current_user)
  end
end
