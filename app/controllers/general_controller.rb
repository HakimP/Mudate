class GeneralController < ApplicationController


  include PayPal::SDK::REST

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

  def crear_pago
      require 'paypal-sdk-rest'

      @payment = Payment.new({
      :intent => "sale",
      :redirect_urls => {
        :return_url=> solicituds_path,
        :cancel_url=> empresas_path
      },
      :payer => {
        :payment_method => "paypal"
        # :payment_method => "credit_card",
        # :funding_instruments => [{
        #   :credit_card => {
        #     :type => "visa",
        #     :number => "4567516310777851",
        #     :expire_month => "11",
        #     :expire_year => "2018",
        #     :cvv2 => "874",
        #     :first_name => "Joe",
        #     :last_name => "Shopper",
        #     :billing_address => {
        #       :line1 => "52 N Main ST",
        #       :city => "Johnstown",
        #       :state => "OH",
        #       :postal_code => "43210",
        #       :country_code => "US" }}}]
            },
      :transactions => [{
        :item_list => {
          :items => [{
            :name => "item",
            :sku => "item",
            :price => "1",
            :currency => "USD",
            :quantity => 1 }]},
        :amount => {
          :total => "1.00",
          :currency => "USD" },
        :description => "This is the payment transaction description." }]})

    if @payment.create
      puts @payment.id
      @payment.id     # Payment Id
      redirect_to general_index_path, notice: "Pagado"
      #redirect_to @payment.links.find{|v| v.method == 'REDIRECT'}.href
    else
      @payment.error  # Error Hash
    end
  end
end
