class AdicionarCamposEnFacturas < ActiveRecord::Migration[5.1]
  def change
    add_column :facturas, :idProveedor, :integer
  end
end
