class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.string :desc_servicio
      t.float :costo

      t.timestamps null: false
    end
  end
end
