module Servicios
   require 'digest/md5'
   def TraerValorParametro(params)	    
	      unless params.nil?
	        ValorParametro.find(params).valor
	      end  
	    
   end 

   def TraerParametros(params)
	   	unless params.nil?
		     ValorParametro.where(["parametroId ='#{params}'"]).select(:valor,:id) 
		end 
   end   

   def Encriptar(params)
       unless params.nil?       
          res = Digest::MD5.hexdigest(params)
          return res  
       end 
   end

   def TraerProveedor(params)
     unless params.nil?
       Proveedore.find(params).nombre
     end

   end

   def TraerEquipo(params)
     unless params.nil?
       Equipo.find(params).marca
     end

   end
end