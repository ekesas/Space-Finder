class Space < ActiveRecord::Base

belongs_to :neighborhood

has_many :reviews

belongs_to :user


def self.search(query)
  where("name like ?", "%#{query}%") 
end

end