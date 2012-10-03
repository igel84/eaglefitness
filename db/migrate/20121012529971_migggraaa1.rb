class Migggraaa1 < ActiveRecord::Migration
  def up
    rename_column :events, :couch_id, :coach_id
  end

  def down
  end
end
