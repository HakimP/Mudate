class GeneralController < ApplicationController

  def index
    if user_signed_in?
    else
    end
  end

  def resumen
    @itemService = params[:servicios]
    @lstEmpresas = Empresa.all
    @lstServicios = Servicio.all

    @itemEmpresa = Empresa.find params[:empresa]
    @itemServicio = Servicio.find params[:servicios]

    @listCaracteristicas = Caracteristica.where servicio_id:params[:servicios]

    @solicitud = Solicitud.new(folio: params[:folio], direccion_origen: params[:direccion_destino],
      direccion_destino:params[:direccion_origen], fech_inicio: params[:fech_inicio],
      fecha_entrega_caja: params[:fecha_entrega_caja])

  end
end
