class AddPhotosToSpaces < ActiveRecord::Migration
  def change
  	change_table :spaces do |t|
  		t.string :photo_url1
  		t.string :photo_url2
  		t.string :photo_url3
  		t.string :photo_url4
  end
end
end 