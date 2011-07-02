class CreateLocals < ActiveRecord::Migration
  def self.up
    create_table :locals do |t|
      t.string :name
      t.string :code
      t.string :union
      t.decimal :porcent
      t.boolean :expensas
      t.belongs_to :shopping

      t.timestamps
    end
  end

  def self.down
    drop_table :locals
  end
end
