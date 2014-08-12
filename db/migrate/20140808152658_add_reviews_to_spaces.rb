class AddReviewsToSpaces < ActiveRecord::Migration
  def change
  	change_table :spaces do |t|
  		t.text :reviews 
  end
end
end 