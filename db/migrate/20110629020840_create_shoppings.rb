class CreateShoppings < ActiveRecord::Migration
  def self.up
    create_table :shoppings do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :shoppings
  end
end
