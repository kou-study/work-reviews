class MoviesController < ApplicationController
  before_action :require_user_logged_in
  
  def index
    @movies = Movie.where(category: params[:category], initial: params[:initial]).order(hurigana: :asc).page(params[:page]).per(15)
    @count_movies = Movie.where(category: params[:category], initial: params[:initial])
    counts_from_movie(@count_movies)
  end

  def show
    @movie = Movie.find(params[:id])
    @posts = @movie.posts.order(id: :desc).page(params[:page]).per(20)
    @default_evaluation = 0.0
    counts_post(@movie)
  end
  
  def posts
    @movie = Movie.find(params[:id])
    @post = @movie.posts.build
  end
end
