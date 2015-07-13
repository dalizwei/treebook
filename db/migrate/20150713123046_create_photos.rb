class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :user_id
      t.string :photo_name
      t.string :photo_tag
      t.string :photo_link
      t.string :thumb_link
      t.text :photo_descript
      t.string :visibility

      t.timestamps
    end
  end
end
