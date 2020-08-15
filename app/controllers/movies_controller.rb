class MoviesController < ApplicationController
  def index
    @movies = Movie.where(category: params[:category], initial: params[:initial]).order('title').page(params[:page]).per(15)
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
  end

  def create
  end
end
