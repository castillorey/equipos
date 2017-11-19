class EliminarIdProveedoresDeFacturas < ActiveRecord::Migration[5.1]
  def change
    remove_column :facturas, :idProveedor, :integer
  end
end
