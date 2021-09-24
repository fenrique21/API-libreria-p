class CreateFotografia < ActiveRecord::Migration[5.2]
  def change
    create_table :fotografia do |t|
      t.string :nombre_foto, null: false
      t.references :autor, null: false, index: true
      t.timestamps
    end
  end
end
