class AddPhotoUrlToNeighborhoods < ActiveRecord::Migration
  def change

  	change_table :neighborhoods do |t|

    t.string :photo_url

  end
 
end

end 