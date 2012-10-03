class Miiig < ActiveRecord::Migration
  def up
    add_column :events, :day, :string
    
  end

  def down
  end
end
