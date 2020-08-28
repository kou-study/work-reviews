class ApplicationController < ActionController::Base
    include SessionsHelper
    
    private
    
    def require_user_logged_in
        unless logged_in? 
           redirect_to login_url
        end
    end
    
    def counts_from_user(user)
        @counts_favorite = user.favorite_movies.count
    end
    
    def counts_from_movie(movie)
        @counts_movie = movie.count
    end
    
    def counts_post(movie)
        @counts_post = movie.posts.count
    end
end
