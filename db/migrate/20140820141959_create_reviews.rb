class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :author
      t.string :content
      t.string :rating
      t.string :space_id

      t.timestamps
    end
  end
end
