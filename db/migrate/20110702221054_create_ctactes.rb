class CreateCtactes < ActiveRecord::Migration
  def self.up
    create_table :ctactes do |t|
      t.string :name
      t.decimal :amount
      t.belongs_to :account
      t.belongs_to :local
      t.date :date

      t.timestamps
    end
  end

  def self.down
    drop_table :ctactes
  end
end
