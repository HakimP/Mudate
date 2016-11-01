class GeneralController < ApplicationController

  def index
    if user_signed_in?
    else
    end
  end

  def resumen
    @lstEmpresas = Empresa.all
    @lstServicios = Servicio.all
    
    @solicitud = Solicitud.new(folio: params[:folio], direccion_origen: params[:dor], direccion_destino:params[:ddes])
    @coco = "cocoanso"
  end
end
