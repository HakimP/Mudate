class AddDireccionToSolicitud < ActiveRecord::Migration
  def change
    add_column :solicituds, :direccion_destino, :string
  end
end
