class CreateMovements < ActiveRecord::Migration
  def self.up
    create_table :movements do |t|
	t.integer "account_id"
	t.string "movement_type", :limit => 25	
	t.string "description", :limit => 255
        t.decimal "amount"
      	t.timestamps
    end
    add_index("movements", "account_id") 
    #Es el campo por donde se comunica movements con accounts
  end

  def self.down 	
	drop_table :movements
  end

end
