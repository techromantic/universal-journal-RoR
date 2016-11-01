class AddLocationToEntries < ActiveRecord::Migration
  def change
  	add_column :entries, :country, :string
  	add_column :entries, :city, :string
  end
end
