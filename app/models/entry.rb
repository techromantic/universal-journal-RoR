class Entry < ActiveRecord::Base
	belongs_to :user
	belongs_to :keyword
	accepts_nested_attributes_for :keyword
	def self.today
		where("created_at >=?", Time.zone.now.beginning_of_day)
	end
	
	def self.search(search)
		where("content LIKE ?", "%#{search}%") || 
        where("name LIKE ?", "%#{search}%") ||
        where("entry.user.username LIKE ?", "%#{search}%")
    end
end
