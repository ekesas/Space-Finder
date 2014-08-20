class AddUserIdToSpaces < ActiveRecord::Migration
  def change
  	change_table :spaces do |t|
  		t.string :user_id
  end
end
end 
