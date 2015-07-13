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
		@puppy = Puppy.find(params[:id])
	end

	def update
		@puppy = Puppy.find(params[:id])

		if @puppy.update_attributes(puppy_params)
			redirect_to puppies_path
		else
			render :edit
		end
	end

	def destroy
		@puppy = Puppy.find(params[:id])
		if @puppy.destroy
			redirect_to puppies_path
		else
			render :edit
		end

	end

	def show
		@puppy = Puppy.find(params[:id])
	end

	private
		def puppy_params
			params.require(:puppy).permit(:name,:age,:breed,:image,:bio)
		end

end
