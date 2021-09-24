class CreateAutors < ActiveRecord::Migration[5.2]
  def change
    create_table :autors do |t|
      t.string :nombre_autor, null: false
      t.string :username, null: false
      t.timestamps
    end
  end
end
