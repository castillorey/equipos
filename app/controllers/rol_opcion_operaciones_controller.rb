class RolOpcionOperacionesController < ApplicationController
  before_action :set_rol_opcion_operacione, only: [:show, :edit, :update, :destroy]

  include Servicios
  # GET /rol_opcion_operaciones
  # GET /rol_opcion_operaciones.json
  def index
    @rol_opcion_operaciones = RolOpcionOperacione.all
  end

  # GET /rol_opcion_operaciones/1
  # GET /rol_opcion_operaciones/1.json
  def show
     @roles = TraerParametros(2)
     @operaciones=TraerParametros(3)
  end

  # GET /rol_opcion_operaciones/new
  def new
    @rol_opcion_operacione = RolOpcionOperacione.new
    @roles = TraerParametros(2)
    @operaciones=TraerParametros(3)
  end

  # GET /rol_opcion_operaciones/1/edit
  def edit
     @roles = TraerParametros(2)
     @operaciones=TraerParametros(3)
  end

  # POST /rol_opcion_operaciones
  # POST /rol_opcion_operaciones.json
  def create
    @rol_opcion_operacione = RolOpcionOperacione.new(rol_opcion_operacione_params)

    respond_to do |format|
      if @rol_opcion_operacione.save
        format.html { redirect_to @rol_opcion_operacione, notice: 'Rol opcion operacione was successfully created.' }
        format.json { render :show, status: :created, location: @rol_opcion_operacione }
      else
        format.html { render :new }
        format.json { render json: @rol_opcion_operacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rol_opcion_operaciones/1
  # PATCH/PUT /rol_opcion_operaciones/1.json
  def update
    respond_to do |format|
      if @rol_opcion_operacione.update(rol_opcion_operacione_params)
        format.html { redirect_to @rol_opcion_operacione, notice: 'Rol opcion operacione was successfully updated.' }
        format.json { render :show, status: :ok, location: @rol_opcion_operacione }
      else
        format.html { render :edit }
        format.json { render json: @rol_opcion_operacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rol_opcion_operaciones/1
  # DELETE /rol_opcion_operaciones/1.json
  def destroy
    @rol_opcion_operacione.destroy
    respond_to do |format|
      format.html { redirect_to rol_opcion_operaciones_url, notice: 'Rol opcion operacione was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rol_opcion_operacione
      @rol_opcion_operacione = RolOpcionOperacione.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rol_opcion_operacione_params
      params.require(:rol_opcion_operacione).permit(:usuario_id, :opcione_id, :idrol, :idoperacion, :eliminado, :estadorolop)
    end
end
