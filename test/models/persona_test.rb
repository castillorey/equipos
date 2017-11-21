# == Schema Information
#
# Table name: personas
#
#  id                   :integer          not null, primary key
#  nombres              :string
#  apellidos            :string
#  identificacion       :string
#  correo               :string
#  idEstadoPersona      :integer
#  idTipoPersona        :integer
#  idArea               :integer
#  idCargo              :integer
#  idTipoIdentificacion :integer
#  eliminado            :binary
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'test_helper'

class PersonaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
