# == Schema Information
#
# Table name: anexos
#
#  id            :integer          not null, primary key
#  idTipoAnexo   :integer
#  nombreArchivo :string
#  ruta          :string
#  idEstadoAnexo :integer
#  idEntidad     :integer
#  idTipoEntidad :integer
#  eliminado     :binary
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Anexo < ApplicationRecord
end
