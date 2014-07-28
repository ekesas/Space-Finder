class RemoveSpaceFromNeighborhoods < ActiveRecord::Migration
  def change
  	change_table :neighborhoods do |t|
  		t.remove :space 
  	end 
  end
end
