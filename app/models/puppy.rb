class Puppy < ActiveRecord::Base

	validates :name, uniqueness: true
	validates :name, :bio, :age, :breed, :image, presence: true

end
