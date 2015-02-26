class Appointment < ActiveRecord::Base
	validates :duration, presence: true, numericality: {greater_than_or_equal_to: 1} 
end
