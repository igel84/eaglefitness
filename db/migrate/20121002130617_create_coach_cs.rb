class CreateCoachCs < ActiveRecord::Migration
  def change
    create_table :coach_cs do |t|
      t.string :name

      t.timestamps
    end
  end
end
