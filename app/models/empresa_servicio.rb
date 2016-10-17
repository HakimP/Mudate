class EmpresaServicio < ActiveRecord::Base
  belongs_to :empresa
  belongs_to :servicio
end
