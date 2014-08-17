class AddPhotoUrlToNeighborhood < ActiveRecord::Migration
  def change
  	change_table :neighborhoods do |t|

  		t.string :photo2_url
  end
end
end 
