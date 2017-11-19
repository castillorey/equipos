class CreateAnexos < ActiveRecord::Migration[5.1]
  def change
    create_table :anexos do |t|
      t.integer :idTipoAnexo
      t.string :nombreArchivo
      t.string :ruta
      t.integer :idEstadoAnexo
      t.integer :idEntidad
      t.integer :idTipoEntidad
      t.binary :eliminado

      t.timestamps
    end
  end
end
