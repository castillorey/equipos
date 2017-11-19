# == Schema Information
#
# Table name: consumos
#
#  id                 :integer          not null, primary key
#  idConsumo          :integer
#  idEquipo           :integer
#  idPersona          :integer
#  idProveedor        :integer
#  fecha              :datetime
#  valor              :float
#  comentario         :string
#  idTipoConsumo      :integer
#  idEstadoConsumo    :integer
#  idCategoriaConsumo :integer
#  kilometraje        :float
#  cant               :integer
#  idUnidadMedida     :integer
#  idRubro            :integer
#  numFactura         :integer
#  idUsuario          :integer
#  eliminado          :binary
#  idFacturas         :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class ConsumoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
