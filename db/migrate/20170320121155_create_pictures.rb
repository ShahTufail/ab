class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :url
      t.integer :author_id
      t.string :name

      t.timestamps
    end
  end
end
