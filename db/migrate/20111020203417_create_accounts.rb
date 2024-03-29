class CreateAccounts < ActiveRecord::Migration
  def self.up
    create_table :accounts do |t|
    	t.string "name", :limit => 55
	t.string "category", :limit => 55
	t.string "description", :limit => 255
	t.timestamps
    end
  end

  def self.down
	drop_table :accounts
  end

end
