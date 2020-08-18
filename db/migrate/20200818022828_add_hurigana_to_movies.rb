class AddHuriganaToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :hurigana, :string
  end
end
