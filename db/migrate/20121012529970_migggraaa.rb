class Migggraaa < ActiveRecord::Migration
  def up
    add_column :events, :count, :integer
  end

  def down
  end
end
