class CreateEmpresaServicios < ActiveRecord::Migration
  def change
    create_table :empresa_servicios do |t|
      t.references :empresa, index: true, foreign_key: true
      t.references :servicio, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
