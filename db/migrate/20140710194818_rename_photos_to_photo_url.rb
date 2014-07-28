class RenamePhotosToPhotoUrl < ActiveRecord::Migration
  def change
  	change_table :spaces do |t|
  		t.rename :photos, :photo_url
  end
end 
end
