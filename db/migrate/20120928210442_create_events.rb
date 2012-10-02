class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :value
      t.text :description

      t.timestamps
    end
  end
end
