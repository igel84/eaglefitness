class Miiig < ActiveRecord::Migration
  def up
    add_column :events, :name, :string
  end

  def down
  end
end
