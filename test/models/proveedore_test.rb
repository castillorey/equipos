# == Schema Information
#
# Table name: proveedores
#
#  id              :integer          not null, primary key
#  idProveedor     :integer
#  identificacion  :string
#  nombre          :string
#  idCiudad        :integer
#  idDpto          :integer
#  direccion       :string
#  correo          :string
#  telefonos       :string
#  idTipoProv      :integer
#  idEstadoProv    :integer
#  idCategoriaProv :integer
#  comentario      :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class ProveedoreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
