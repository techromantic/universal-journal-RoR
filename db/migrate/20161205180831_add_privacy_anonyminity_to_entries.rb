class AddPrivacyAnonyminityToEntries < ActiveRecord::Migration
  def change
  	add_column :entries, :private, :boolean, default: false
  	add_column :entries, :anon, :boolean, default: false
  end
end
