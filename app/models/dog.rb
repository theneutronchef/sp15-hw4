class Dog < ActiveRecord::Base
	
    validates :name, presence: true # Validates that there is a name
	validates :age, presence: true # Validates that there is an age
	validates :age, numericality: { only_integer: true }
	
end
