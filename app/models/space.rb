class Space < ActiveRecord::Base

belongs_to :neighborhood

searchkick
attr_accessor :name, :neighborhood, :features
 
  validates :name, presence: true, uniqueness: true
  validates :neighborhood, presence: true
 
  # It returns the articles whose titles contain one or more words that form the query
  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("name like ?", "%#{query}%") 
  end
end

