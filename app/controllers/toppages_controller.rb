class ToppagesController < ApplicationController
  def index
    @movies = Movie.search(params[:title])
  end
  
end
