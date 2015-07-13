class PuppiesController < ApplicationController
	def index

		@puppies = Puppy.all
		
	end

	def create
		@puppy = Puppy.new(puppy_params)
		if(@puppy.save)
			redirect_to puppies_path
		else
			render :new
		end
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
			params.require(:puppy).permit(:name,:age,:breed,:image,:bio)
		end

end
