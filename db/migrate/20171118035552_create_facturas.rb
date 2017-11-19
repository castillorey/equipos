class CreateFacturas < ActiveRecord::Migration[5.1]
  def change
    create_table :facturas do |t|
      t.integer :numFactura
      t.datetime :fecha
      t.string :concepto
      t.float :valor
      t.string :comentarioFactura
      t.bigint :idEstadoFactura
      t.binary :eliminado

      t.timestamps
    end
  end
end
