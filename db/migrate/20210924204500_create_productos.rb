class CreateProductos < ActiveRecord::Migration[5.2]
  def change
    create_table :productos do |t|
      t.string :tipo_producto, null: false
      t.string :nombre_producto, null: false
      t.string :unidades, null: false
      t.string :precio_producto, null: false
      t.string :tecnica, null: false
      t.string :fotografia, null: false
      t.references :tipo_producto, null: false, index: true
      t.timestamps
    end
  end
end
