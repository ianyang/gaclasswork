class CreateHealths < ActiveRecord::Migration
  def change
    create_table :healths do |t|
      t.date :date
      t.integer :steps
      t.integer :calories
      t.integer :sleepduration
      t.integer :sleepquality
      t.timestamps
    end
  end
end
