class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.integer :book_id
      t.string :country

      t.timestamps
    end
  end
end
