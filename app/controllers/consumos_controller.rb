class ConsumosController < ApplicationController
  before_action :set_consumo, only: [:show, :edit, :update, :destroy]

  include Servicios
  # GET /consumos
  # GET /consumos.json
  require "pp"

  def index
    # @consumos = Consumo.all

    @todosConsumos = Consumo.where("idFacturas = ?",params[:id])
    #pp @todosConsumos

    @consumos = @todosConsumos.map do |c|
      {
          "id"  => c.id,
          "equipo"  => TraerEquipo(c.idEquipo),
          "fecha"  => c.fecha,
          "valor"  => c.valor,
          "tipo"  => TraerValorParametro(c.idTipoConsumo),
          "estado"  => TraerValorParametro(c.idEstadoConsumo),
          "categoria"  => TraerValorParametro(c.idCategoriaConsumo),
          "kilometraje"  => c.kilometraje,
          "cantidad"  => c.cant,
          "unidad"  => TraerValorParametro(c.idUnidadMedida),
          "rubro"  => TraerValorParametro(c.idRubro)
      }
    end
    #pp @facturas

    render layout: "application1"
  end

  # GET /consumos/1
  # GET /consumos/1.json
  def show

    @all = Consumo.all

    @consumos = @all.map do |c|
      {
          "id"  => c.id,
          "equipo"  => c.idEquipo,
          "fecha"  => c.fecha.to_date,
          "valor"  => c.valor,
          "tipo"  => TraerValorParametro(c.idTipoConsumo),
          "estado"  => TraerValorParametro(c.idEstadoConsumo),
          "categoria"  => TraerValorParametro(c.idCategoriaConsumo),
          "kilometraje"  => c.kilometraje,
          "cantidad"  => c.cant,
          "unidad"  => TraerValorParametro(c.idUnidadMedida),
          "rubro"  => TraerValorParametro(c.idRubro)
      }
    end

    render layout: "application1"
  end

  # GET /consumos/new
  def new
    @consumo = Consumo.new
    render layout: "application1"
  end

  # GET /consumos/1/edit
  def edit
    render layout: "application1"
  end

  # POST /consumos
  # POST /consumos.json
  def create
    @consumo = Consumo.new(consumo_params)

    respond_to do |format|
      if @consumo.save
        format.html { redirect_to @consumo, notice: 'Consumo was successfully created.' }
        format.json { render :show, status: :created, location: @consumo }
      else
        format.html { render :new }
        format.json { render json: @consumo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consumos/1
  # PATCH/PUT /consumos/1.json
  def update
    respond_to do |format|
      if @consumo.update(consumo_params)
        format.html { redirect_to @consumo, notice: 'Consumo was successfully updated.' }
        format.json { render :show, status: :ok, location: @consumo }
      else
        format.html { render :edit }
        format.json { render json: @consumo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consumos/1
  # DELETE /consumos/1.json
  def destroy
    @consumo.destroy
    respond_to do |format|
      format.html { redirect_to consumos_url, notice: 'Consumo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consumo
      @consumo = Consumo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consumo_params
      params.require(:consumo).permit(:idConsumo, :idEquipo, :idPersona, :idProveedor, :fecha, :valor, :comentario, :idTipoConsumo, :idEstadoConsumo, :idCategoriaConsumo, :kilometraje, :cant, :idUnidadMedida, :idRubro, :numFactura, :idUsuario, :eliminado, :idFacturas)
    end
end
