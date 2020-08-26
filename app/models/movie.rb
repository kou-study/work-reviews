class Movie < ApplicationRecord
    has_many :users
    has_many :favorites
    has_many :favorite_users, through: :favorites, source: :user
    
    has_many :posts
    
    def update_evaluation
        self.update(evaluation: self.posts.average("evaluation").round(1))
    end
    
    def self.search(search)
        movies = Movie.arel_table
        if search.present?
            Movie.where(movies[:title].matches("%#{search}%"))
        else
            Movie.none
        end
    end
end
