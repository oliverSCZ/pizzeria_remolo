class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :nombre
      t.integer :cantidad
      t.integer :stock
      t.decimal :precio
      t.text :descripcion
      t.string :imagen
      t.references :categories, null: false, foreign_key: true

      t.timestamps
    end
  end
end
