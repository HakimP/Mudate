class CreateCaracteristicas < ActiveRecord::Migration
  def change
    create_table :caracteristicas do |t|
      t.references :servicio, index: true, foreign_key: true
      t.string :descripcion
      t.boolean :estatus
      t.float :costo

      t.timestamps null: false
    end
  end
end
