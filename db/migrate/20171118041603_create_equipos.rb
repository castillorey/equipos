class CreateEquipos < ActiveRecord::Migration[5.1]
  def change
    create_table :equipos do |t|
      t.integer :idEquipo
      t.string :placa
      t.string :modelo
      t.string :serie
      t.string :marca
      t.integer :idEstadoEquipo
      t.integer :idTipoEquipo
      t.integer :idArea
      t.binary :eliminado

      t.timestamps
    end
  end
end
