class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :nameCus
      
      t.references :reservation, index: true, foreign_key: true
      t.references :room, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
