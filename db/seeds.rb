# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a = Servicio.create(desc_servicio:"Mudanzas Economicas", costo:750);
  Caracteristica.create(servicio:a, descripcion:"No incluye embalaje de cajas y contenidos.", estatus:true);
  Caracteristica.create(servicio:a, descripcion:"Maniobras y flete incluido.", estatus:true);
  Caracteristica.create(servicio:a, descripcion:"Retiro final de desecho de empaque.", estatus:true);
  Caracteristica.create(servicio:a, descripcion:"Maniobras y flete incluido.", estatus:true);

a = Servicio.create(desc_servicio:"Mudanzas Basica", costo:1000);
  Caracteristica.create(servicio:a, descripcion:"No incluye embalaje de cajas y contenidos.", estatus:true);
  Caracteristica.create(servicio:a, descripcion:"25 cajas de cortesía para su previo empaque.", estatus:true);
  Caracteristica.create(servicio:a, descripcion:"Otorgamos 4 cajas armario para la ropa de colgar.", estatus:true);
  Caracteristica.create(servicio:a, descripcion:"Maniobras y flete incluido.", estatus:true);
  Caracteristica.create(servicio:a, descripcion:"Póliza de seguro de daños menores", estatus:true);
  Caracteristica.create(servicio:a, descripcion:"Volado hasta tercer piso sin costo.", estatus:true);
  Caracteristica.create(servicio:a, descripcion:"Retiro final de desecho de empaque.", estatus:true);

a = Servicio.create(desc_servicio:"Mudanzas Todo Incluido", costo:1250);
  Caracteristica.create(servicio:a, descripcion:"Empaque de contenidos y preparación de muebles un día antes del traslado", estatus:true);
  Caracteristica.create(servicio:a, descripcion:"Desarme de muebles (tornillería básica y compleja)", estatus:true);
  Caracteristica.create(servicio:a, descripcion:"Obras de arte y cristalería fina ya incluido.", estatus:true);
  Caracteristica.create(servicio:a, descripcion:"Traslado de ropa de colgar sin límite.", estatus:true);
  Caracteristica.create(servicio:a, descripcion:"Material de empaque ilimitado", estatus:true);
  Caracteristica.create(servicio:a, descripcion:"Maniobras y flete incluido.", estatus:true);
  Caracteristica.create(servicio:a, descripcion:"Póliza de seguro de daños menores.", estatus:true);
  Caracteristica.create(servicio:a, descripcion:"Volado de muebles sin límite.", estatus:true);
  Caracteristica.create(servicio:a, descripcion:"Desempaque y acomodo a criterio propio.", estatus:true);

Servicio.create(desc_servicio:"Empaque", costo:350);
