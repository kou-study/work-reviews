class Movie < ApplicationRecord
    has_many :users
    has_many :favorites
    has_many :favorite_users, through: :favorites, source: :user
    
    has_many :posts
end
