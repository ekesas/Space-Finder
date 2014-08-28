class AddRatesToSpaces < ActiveRecord::Migration
  def change
  	change_table :spaces do |t|
  		t.string :daily_rate
  		t.string :Weekly_rate
  		t.string :monthly_rate
  end
end
end 