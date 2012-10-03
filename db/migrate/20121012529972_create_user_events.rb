class CreateUserEvents < ActiveRecord::Migration
  def up
      create_table :user_events 
      add_column :user_events,  :user_id, :integer
      add_column :user_events,  :event_id, :integer
      end
end
