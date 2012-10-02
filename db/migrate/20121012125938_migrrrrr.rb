class Migrrrrr < ActiveRecord::Migration
  def up


  add_column :users, :user_e_id, :integer
  add_column :users, :name, :string

  end

  def down
  end
end
