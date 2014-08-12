class Neighborhood < ActiveRecord::Base

	has_many :spaces

	searchkick

end

