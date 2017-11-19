class InicioController < ApplicationController
	def casa
		if session[:logueado]
		 render layout: "application"
	 	else
			redirect_to "/"
		end
	end
	
end
