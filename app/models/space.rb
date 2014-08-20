class Space < ActiveRecord::Base

belongs_to :neighborhood

has_many :reviews

def self.search(query)
  where("name like ?", "%#{query}%") 
end

end