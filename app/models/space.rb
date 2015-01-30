class Space < ActiveRecord::Base

belongs_to :neighborhood

belongs_to :user

validates_presence_of :name


def self.search(query)
  spaces = where("name like ?", "%#{query}%").order("created_at DESC")
  neighborhood = Neighborhood.find_by(:name => query)
  if neighborhood
  	spaces = spaces + neighborhood.spaces.order("created_at DESC")
  end
  return spaces
end

end