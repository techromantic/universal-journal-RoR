class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :name
      t.string :username
      t.string :country
      t.string :city
      t.text :content
      t.integer :points

      t.timestamps null: false
    end
  end
end
