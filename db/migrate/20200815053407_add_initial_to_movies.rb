class AddInitialToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :initial, :string
  end
end
