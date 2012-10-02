class Migrrrrr < ActiveRecord::Migration
  def up

 add_column :events, :couch_id, :integer

 
  end

  def down
  end
end
