class CreateRatings < ActiveRecord::Migration
  def self.up
    create_table :ratings do |t|
      t.references :user
      t.references :beer
      t.decimal :size
      t.string :measurement
      t.decimal :cost
      t.integer :over_all
      t.integer :appearance
      t.integer :aroma
      t.integer :mouthfeel
      t.integer :flavor
      t.text :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :ratings
  end
end
