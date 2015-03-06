class DogsController < ApplicationController

	def index
		@dogs = Dog.all
	end

	def new
		@dog = Dog.new
	end

	def create
		@dog = Dog.create(dog_params)
		if @dog.save
			redirect_to @dog
		else
	      	@error = "Wrong inputs. Make sure both inputs are filled, and age is an integer value."
			render "new"
		end
	end

	def show
		@dog = Dog.find(params[:id])
	end

	private

	def dog_params
	    params.require(:dog).permit(:name, :age)
	end


end
