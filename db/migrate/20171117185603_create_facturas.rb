class CreateFacturas < ActiveRecord::Migration[5.1]
  def change
    create_table :facturas do |t|
      t.integer :Factura
      t.date :Fecha
      t.string :Proveedor
      t.string :Concepto
      t.float :Valor
      t.string :Estado

      t.timestamps
    end
  end
end
