class AlterAmount < ActiveRecord::Migration
  def up

  change_column("movements","amount",:decimal, :precision => 10, :scale => 2)

  end

  def down
  end
end
