class AdicionarCamposEnFacturas2 < ActiveRecord::Migration[5.1]
  def change
    add_column :facturas, :idProveedor, :integer
  end
end
