class MoviesController < ApplicationController
  before_action :require_user_logged_in
  
  def index
    @movies = Movie.where(category: params[:category], initial: params[:initial]).order(title: :asc).page(params[:page]).per(15)
    @count_movies = Movie.where(category: params[:category], initial: params[:initial])
    counts_from_movie(@count_movies)
  end

  def show
    @movie = Movie.find(params[:id])
  end
  
end
