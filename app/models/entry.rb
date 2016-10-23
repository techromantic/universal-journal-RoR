class Entry < ActiveRecord::Base
	belongs_to :user
	def self.today
		where("created_at >=?", Time.zone.now.beginning_of_day)
	end
end
