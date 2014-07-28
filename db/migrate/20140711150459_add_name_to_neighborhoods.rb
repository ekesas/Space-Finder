class AddNameToNeighborhoods < ActiveRecord::Migration
  def change
  		change_table :neighborhoods do |t|
  			t.string :name 
  		end 
  end
end
