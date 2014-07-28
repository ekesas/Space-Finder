class ChangeSpaceIdToSpace < ActiveRecord::Migration
  def change

  	change_table :neighborhoods do |t|
  		t.rename :space_id, :space
  end
  end

end 