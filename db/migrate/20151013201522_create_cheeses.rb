class CreateCheeses < ActiveRecord::Migration
  def change
    create_table :cheeses do |t|
      t.string :name, null:false

      t.timestamps null: false
    end
  end
end
