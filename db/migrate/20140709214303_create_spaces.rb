class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.string :name
      t.string :address
      t.string :sq_footage
      t.string :features
      t.string :photos
      t.string :rate
      t.string :contact

      t.timestamps
    end
  end
end
