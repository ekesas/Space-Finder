class RemoveNeighborhoodsFromSpaces < ActiveRecord::Migration
  	def change

  			change_table :spaces do |t|

  			t.remove :neighborhood

  		end 
  	end 
  end

