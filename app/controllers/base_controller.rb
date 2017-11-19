class BaseController < ApplicationController
  before_action :auth!
  require "pp"
  private
    def auth!
     if defined?session[:usuario]
        unless session[:logueado] == true
          redirect_to "/"
        end
      else
        redirect_to "/"
      end
    end

    def validarOpcion(uri)
      @arr = uri.split('/')
      @controlador = @arr[3].split("?").first.to_s
      @excepciones = ['doLogin','doDestroySession','postConsolidarFactura','anexosUpdate','anexosDelete','getValidarEquipoExiste',
      'getValidarPersonaExiste','getValidarProveedorExiste','getIdProveedor','getTraerEquiposActivosDos','getTraerPersonasActivos',
      'getTraerProveedoresActivos','getOpcions','getValorParams','getAnexos','getConsumos','getVencimientos','getTraerEquiposActivos']
      @excepciones.each do |excep|
        if excep == @controlador
          return true
        end
      end
      return false
    end


    def validarUsuarioOpcion(controller,idRol)
      if defined?session[:usuario]
        if session[:logueado] == true
          RolOpcionOperacion.joins("INNER JOIN opciones as op ON rol_opcion_operaciones.opcion_id = op.id and
          rol_opcion_operaciones.idrol = #{idRol} and rol_opcion_operacions.estadorol = 'A' and
          op.estadoopcion = 'A' and op.eshoja = true and op.controller = '#{controller}'").exists?
        end
      end
    end

end
