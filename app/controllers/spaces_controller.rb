
class SpacesController < ApplicationController
	

  def index

			@spaces=Space.all

			@spaces = Space.paginate :page =>params[:page], :per_page => 4
	end 

	def show 

		@space = Space.find_by(:id => params[:id])

	end 


	def create
		
		@space = Space.create(params[:space])

		flash[:success] = "Space created"

		redirect_to "/spaces/#{@space.id}"
	
	end 

	def new

		@space = Space.new

	end

	def edit
		@space =Space.find_by(:id => params[:id])
	end

	def update

		@space =Space.find_by(:id => params[:id])
		@space.update(params[:space])
		flash[:success] = "Space updated"

		redirect_to space_path(@space.id)

	end 

	def destroy
		@space = Space.find_by(:id => params[:id])
		@space.destroy flash[:sucess] = "Space deleted"

		redirect_to'/spaces'
	end 

end 



