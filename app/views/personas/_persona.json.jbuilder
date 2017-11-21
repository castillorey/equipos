json.extract! persona, :id, :nombres, :apellidos, :identificacion, :correo, :idEstadoPersona, :idTipoPersona, :idArea, :idCargo, :idTipoIdentificacion, :eliminado, :created_at, :updated_at
json.url persona_url(persona, format: :json)
