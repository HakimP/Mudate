class Empresa < ActiveRecord::Base
  has_many :empresa_servicios
  has_many :servicios, through: :empresa_servicios
end
