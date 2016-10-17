class CreateSolicituds < ActiveRecord::Migration
  def change
    create_table :solicituds do |t|
      t.integer :folio
      t.datetime :fecha_cita
      t.datetime :fech_inicio
      t.datetime :fecha_fin
      t.datetime :fecha_entrega_caja
      t.references :empresa_servicio, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
