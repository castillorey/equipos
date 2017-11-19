json.extract! factura, :id, :numFactura, :fecha, :concepto, :valor, :comentarioFactura, :idEstadoFactura, :eliminado, :created_at, :updated_at
json.url factura_url(factura, format: :json)
