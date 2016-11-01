class SolicitudsController < ApplicationController
  before_action :set_solicitud, only: [:show, :edit, :update, :destroy]

  # GET /solicituds
  # GET /solicituds.json
  def index
    @paramSelServicio = params[:format]
    @solicituds = Solicitud.all
    @lstEmpresas = Empresa.all
    @lstServicios = Servicio.all
    @solicitud = Solicitud.new
    @folioActual = Solicitud.count
  end

  def guardarSolicitud
    @solicitud = Solicitud.new(folio: params[:folio], direccion_origen: params[:dor], direccion_destino:params[:ddes])
    redirect_to general_resumen_path(@solicitud, folio: params[:folio], direccion_origen: params[:dor], direccion_destino:params[:ddes])
  end
  # GET /solicituds/1
  # GET /solicituds/1.json
  def show
  end

  # GET /solicituds/new
  def new
    @solicitud = Solicitud.new
  end

  # GET /solicituds/1/edit
  def edit
  end

  # POST /solicituds
  # POST /solicituds.json
  def create
    @solicitud = Solicitud.new(solicitud_params)

    respond_to do |format|
      if @solicitud.save
        format.html { redirect_to @solicitud, notice: 'Solicitud was successfully created.' }
        format.json { render :show, status: :created, location: @solicitud }
      else
        format.html { render :new }
        format.json { render json: @solicitud.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solicituds/1
  # PATCH/PUT /solicituds/1.json
  def update
    respond_to do |format|
      if @solicitud.update(solicitud_params)
        format.html { redirect_to @solicitud, notice: 'Solicitud was successfully updated.' }
        format.json { render :show, status: :ok, location: @solicitud }
      else
        format.html { render :edit }
        format.json { render json: @solicitud.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solicituds/1
  # DELETE /solicituds/1.json
  def destroy
    @solicitud.destroy
    respond_to do |format|
      format.html { redirect_to solicituds_url, notice: 'Solicitud was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitud
      @solicitud = Solicitud.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solicitud_params
      params.require(:solicitud).permit(:folio, :fecha_cita, :fech_inicio, :fecha_fin, :fecha_entrega_caja, :empresa_servicio_id, :direccion_destino, :direccion_origen)
    end
end
