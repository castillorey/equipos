# == Schema Information
#
# Table name: facturas
#
#  id                :integer          not null, primary key
#  numFactura        :integer
#  fecha             :datetime
#  concepto          :string
#  valor             :float
#  comentarioFactura :string
#  idEstadoFactura   :integer
#  eliminado         :binary
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  idProveedor       :integer
#

require 'test_helper'

class FacturaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
