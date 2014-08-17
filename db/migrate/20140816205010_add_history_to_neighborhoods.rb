class AddHistoryToNeighborhoods < ActiveRecord::Migration
  def change
  	change_table :neighborhoods do |t|
  		t.text :description 
  end
end
end 
