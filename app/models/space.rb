class Space < ActiveRecord::Base

belongs_to :neighborhood

def self.search(query)
  where("name like ?", "%#{query}%") 
end

end