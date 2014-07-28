class AddNeighborhoodIdToSpaces < ActiveRecord::Migration
  def change
    add_column :spaces, :neighborhood_id, :int
  end
end
