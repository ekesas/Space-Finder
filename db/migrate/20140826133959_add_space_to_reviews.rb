class AddSpaceToReviews < ActiveRecord::Migration
  def change

  	change_table :reviews do |t|
  		t.string :space_id
  end
end
end 
