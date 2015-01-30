class SearchController < ApplicationController

	def search
		neighborhood = Neighborhood.find_by(:name => params[:name])
		spaces = Space.where(:neighborhood => neighborhood[:id])
	end
end
