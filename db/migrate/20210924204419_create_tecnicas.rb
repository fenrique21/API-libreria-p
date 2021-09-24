class CreateTecnicas < ActiveRecord::Migration[5.2]
  def change
    create_table :tecnicas do |t|
      t.string :nombre_tecnica, null: false
      t.timestamps
    end
  end
end
