class RemoveUsernameFromEntries < ActiveRecord::Migration
  def change
  	remove_column :entries, :username
  	remove_column :entries, :country
  	remove_column :entries, :city
  end
end
