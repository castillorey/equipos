class CreatePersonas < ActiveRecord::Migration[5.1]
  def change
    create_table :personas do |t|
      t.string :nombres
      t.string :apellidos
      t.string :identificacion
      t.string :correo
      t.integer :idEstadoPersona
      t.integer :idTipoPersona
      t.integer :idArea
      t.integer :idCargo
      t.integer :idTipoIdentificacion
      t.binary :eliminado

      t.timestamps
    end
  end
end
