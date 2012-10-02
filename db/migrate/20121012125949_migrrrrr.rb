class Migrrrrr < ActiveRecord::Migration
  def up

  create_table :user_events
  add_column :user_events, :id_user, :integer
  add_column :user_events, :id_event, :integer
  

  end

  def down
  end
end
