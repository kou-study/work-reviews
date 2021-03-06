class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :user, foreign_key: true
      t.references :movie, foreign_key: { to_table: :movies }

      t.timestamps
      
      t.index [:user_id, :movie_id], unique: true
    end
  end
end
