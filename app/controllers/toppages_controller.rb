class ToppagesController < ApplicationController
  def index
    @movies = Movie.search(params[:title]).order(hurigana: :asc)
  end
end
