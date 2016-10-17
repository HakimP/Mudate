class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :nombre
      t.string :razon_social
      t.boolean :estatus

      t.timestamps null: false
    end
  end
end
