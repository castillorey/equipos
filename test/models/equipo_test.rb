# == Schema Information
#
# Table name: equipos
#
#  id             :integer          not null, primary key
#  idEquipo       :integer
#  placa          :string
#  modelo         :string
#  serie          :string
#  marca          :string
#  idEstadoEquipo :integer
#  idTipoEquipo   :integer
#  idArea         :integer
#  eliminado      :binary
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class EquipoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
