class CreateConsumos < ActiveRecord::Migration[5.1]
  def change
    create_table :consumos do |t|
      t.integer :idConsumo
      t.integer :idEquipo
      t.integer :idPersona
      t.integer :idProveedor
      t.datetime :fecha
      t.float :valor
      t.string :comentario
      t.integer :idTipoConsumo
      t.integer :idEstadoConsumo
      t.integer :idCategoriaConsumo
      t.float :kilometraje
      t.integer :cant
      t.integer :idUnidadMedida
      t.integer :idRubro
      t.integer :numFactura
      t.integer :idUsuario
      t.binary :eliminado
      t.integer :idFacturas

      t.timestamps
    end
  end
end
