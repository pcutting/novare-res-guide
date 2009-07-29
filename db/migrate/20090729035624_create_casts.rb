class CreateCasts < ActiveRecord::Migration
  def self.up
    create_table :casts do |t|
      t.references :beer
      t.decimal :size
      t.string :measurement
      t.decimal :cost
      t.boolean :available
      t.boolean :tapped

      t.timestamps
    end
  end

  def self.down
    drop_table :casts
  end
end
