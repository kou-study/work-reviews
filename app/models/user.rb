class User < ApplicationRecord
    validates :name, presence: true, length: { maximum: 50 }
    has_secure_password
    
    has_many :movies
    has_many :favorites
    has_many :favorite_movies, through: :favorites, source: :movie
    
    has_many :posts
    
    def favorite_add(movie)
        unless self.favorite_movies.include?(movie)
            self.favorites.find_or_create_by(user_id: self.id, movie_id: movie.id)
        end
    end
    
    def unfavorite(movie)
        favorite = self.favorites.find_by(movie_id: movie.id)
        favorite.destroy if favorite
    end
    
    def favorite?(movie)
        self.favorite_movies.include?(movie)
    end
    
    def posting(movie, content, evaluation)
        self.posts.build(user_id: self.id, movie_id: movie.id, content: content, evaluation: evaluation)
    end
end
