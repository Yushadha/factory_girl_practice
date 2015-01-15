class Question < ActiveRecord::Base

	validates :title, presence: true

	before_save :capitalize_title
	
	def capitalize_title
		self.title.capitalize!
	end

	# def self.newest_three
	# 	where("update_at DESC").limit(3)
	# end

	default_scope { where("id > 3").limit(3)}

	scope :scope_name, lambda

end
