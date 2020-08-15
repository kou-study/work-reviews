class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.integer :category
      t.string :title
      t.string :company
      t.integer :year
      t.text :synopsis
      t.string :image_path

      t.timestamps
    end
  end
end
