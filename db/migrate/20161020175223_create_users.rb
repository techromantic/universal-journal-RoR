class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :country
      t.string :city
      t.string :languages
      t.integer :points
      t.timestamps null: false
    end
  end
end
