class FacturasController < BaseController
  before_action :set_factura, only: [:show, :edit, :update, :destroy]

  include Servicios
  require "pp"
  # GET /facturas
  # GET /facturas.json

  def index
    @todasFacturas = Factura.all
    #pp @todasFacturas

    @facturas = @todasFacturas.map do |f|
      {
          "id"            => f.id,
          "numFactura"            => f.numFactura,
          "fecha"       => f.fecha.to_date,
          "proveedor" => TraerProveedor(f.idProveedor),
          "concepto"           => f.concepto,
          "valor"           => f.valor,
          "estado"           => TraerValorParametro(f.idEstadoFactura)
      }
    end
    #pp @facturas
  end

  # GET /facturas/1
  # GET /facturas/1.json
  def show
    @all = Factura.all

    @facturas = @all.map do |f|
      {
          "id"  => f.id,
          "numFactura"  => f.numFactura,
          "fecha"       => f.fecha.to_date,
          "proveedor" => TraerProveedor(f.idProveedor),
          "concepto" => f.concepto,
          "valor" => f.valor,
          "estado" => TraerValorParametro(f.idEstadoFactura)
      }
    end

    @proveedor =  Proveedore.find(@factura.idProveedor).nombre
    @estado = TraerValorParametro(@factura.idEstadoFactura)
    render "show1"
  end

  # GET /facturas/new
  def new
    @factura = Factura.new

    @proveedores =  Proveedore.all
    @estados = TraerParametros(4)
  end

  # GET /facturas/1/edit
  def edit
    @proveedores =  Proveedore.all
    @estados = TraerParametros(4)
  end

  # POST /facturas
  # POST /facturas.json
  def create
    @factura = Factura.new(factura_params)

    respond_to do |format|
      if @factura.save
        format.html { redirect_to @factura, notice: 'Factura was successfully created.' }
        format.json { render :show, status: :created, location: @factura }
      else
        format.html { render :new }
        format.json { render json: @factura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /facturas/1
  # PATCH/PUT /facturas/1.json
  def update
    respond_to do |format|
      if @factura.update(factura_params)
        format.html { redirect_to @factura, notice: 'Factura was successfully updated.' }
        format.json { render :show, status: :ok, location: @factura }
      else
        format.html { render :edit }
        format.json { render json: @factura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facturas/1
  # DELETE /facturas/1.json
  def destroy
    @factura.destroy
    respond_to do |format|
      format.html { redirect_to facturas_url, notice: 'Factura was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_factura
      @factura = Factura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def factura_params
      params.require(:factura).permit(:numFactura, :fecha,:idProveedor, :concepto, :valor, :comentarioFactura, :idEstadoFactura, :eliminado)
    end
end
