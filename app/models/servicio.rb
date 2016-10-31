class Servicio < ActiveRecord::Base
  has_many :caracteristicas
  has_many :empresa_servicios
  has_many :empresas, through: :empresa_servicios
end
