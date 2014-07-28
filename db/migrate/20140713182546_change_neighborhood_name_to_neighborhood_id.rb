class ChangeNeighborhoodNameToNeighborhoodId < ActiveRecord::Migration
  def change
  	change_table :spaces do |t|
         t.rename :neighborhood, :neighborhood_id
     end

  end
end
