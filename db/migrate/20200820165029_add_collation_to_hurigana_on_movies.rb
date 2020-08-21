class AddCollationToHuriganaOnMovies < ActiveRecord::Migration[5.2]
  def change
     change_column :movies, :hurigana, :string, collation: 'utf8_bin'
  end
end
