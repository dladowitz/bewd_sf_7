class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.text :story
      t.string :image_id
      t.integer :artist_id

      t.timestamps null: false
    end
  end
end
