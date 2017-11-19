class CreateProveedores < ActiveRecord::Migration[5.1]
  def change
    create_table :proveedores do |t|
      t.integer :idProveedor
      t.string :identificacion
      t.string :nombre
      t.integer :idCiudad
      t.integer :idDpto
      t.string :direccion
      t.string :correo
      t.string :telefonos
      t.integer :idTipoProv
      t.integer :idEstadoProv
      t.integer :idCategoriaProv
      t.string :comentario

      t.timestamps
    end
  end
end
