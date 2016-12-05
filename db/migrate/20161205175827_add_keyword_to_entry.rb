class AddKeywordToEntry < ActiveRecord::Migration
  def change
  	add_column :entries, :keyword_id, :integer
  end
end
