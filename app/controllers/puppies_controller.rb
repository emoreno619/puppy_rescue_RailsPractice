class PuppiesController < ApplicationController
	def index

		@puppies = Puppy.all
		
	end

	def create
		@puppy = Puppy.create(puppy_params)
	end

	def new
		@puppy = Puppy.new
	end

	def edit
		
	end

	def update
		
	end

	def delete
		
	end

	def show
		
	end

	private
		def puppy_params
			
		end

end
