class NeighborhoodsController < ApplicationController

	respond_to :json, :xml

	def index

		@neighborhoods=Neighborhood.all

		@neighborhoods = Neighborhood.paginate :page =>params[:page], :per_page => 4

	end 

	def show 

		@neighborhood = Neighborhood.find_by(:id => params[:id])

		@spaces = Space.where(:neighborhood_id => @neighborhood.id)
		#when we say "@spaces" on the neighborhoods show page, we mean all of the spaces
		#for which (where) the number in the space's neighborhood_id column is the same
		#as the number in the id column of the neighborhood we're showing.

	end 


	def create

		@neighborhood = Neighborhood.new(params[:spaces])

		flash[:success] = "Space created"

		redirect_to "/spaces/#{@neighborhood.id}"
	
	end 

	def new

		@neighborhood = Neighborhood.new

	end

	def edit
		@neighborhood =Neighborhood.find_by(:id => params[:id])
	end

	def update

		@neighborhood =Neighborhood.find_by(:id => params[:id])
		@neighborhood.update(params[:neighborhood])
		flash[:success] = "Space updated"

		redirect_to space_path(@neighborhood.id)

	end 

	def destroy
		@neighborhood = neighborhood.find_by(:id => params[:id])
		@neighborhood.destroy flash[:sucess] = "Space deleted"

		redirect_to'/neighborhoods'

	end 


end 


