# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Empresa.create(nombre:"Moving Home", estatus:true);
Empresa.create(nombre:"City Movers", estatus:true);
Empresa.create(nombre:"MovingCare México", estatus:true);

Servicio.create(desc_servicio:"Mudanzas Economicas", costo:750);
Servicio.create(desc_servicio:"Mudanzas Residenciales Economicas", costo:750);
Servicio.create(desc_servicio:"Mudanzas Residenciales Todo Incluido", costo:1250);

Servicio.create(desc_servicio:"Empaque", costo:350);
