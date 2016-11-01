class AddDireccionOrigenToSolicitud < ActiveRecord::Migration
  def change
    add_column :solicituds, :direccion_origen, :string
  end
end
