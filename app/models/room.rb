class Room < ActiveRecord::Base
	has_many :reservations
	has_many :employees
	has_many :customers
end
