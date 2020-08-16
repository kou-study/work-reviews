class MoviesController < ApplicationController
  before_action :require_user_logged_in
  
  def index
    @movies = Movie.where(category: params[:category], initial: params[:initial]).order('title').page(params[:page]).per(15)
  end

  def show
    @movie = Movie.find(params[:id])
  end
  
end
