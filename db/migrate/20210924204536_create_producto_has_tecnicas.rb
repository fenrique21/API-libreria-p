class CreateProductoHasTecnicas < ActiveRecord::Migration[5.2]
  def change
    create_table :producto_has_tecnicas do |t|
      t.references :producto, null: false, index: true
      t.references :tecnica, null: false, index: true
      t.timestamps
    end
  end
end
