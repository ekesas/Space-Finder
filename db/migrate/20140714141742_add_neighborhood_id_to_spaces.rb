class AddNeighborhoodIdToSpaces < ActiveRecord::Migration
  def change
    add_column :spaces, :neighborhood_id, :integer
  end
end
