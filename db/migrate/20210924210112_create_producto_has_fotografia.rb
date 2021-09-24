class CreateProductoHasFotografia < ActiveRecord::Migration[5.2]
  def change
    create_table :producto_has_fotografia do |t|
      t.references :producto, null: false, index: true
      t.references :fotografia, null: false, index: true
      t.timestamps
    end
  end
end
