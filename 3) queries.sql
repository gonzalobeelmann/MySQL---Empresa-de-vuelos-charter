-- a. Listado de pasajeros de la empresa (apellido, nombre, dni):
select apellido as APELLIDO,nombre as NOMBRE,dni as DNI from pasajero;
-- b. Listado de pasajeros de la empresa (apellido, nombre, dni, domicilio)
select p.apellido as APELLIDO,p.nombre as NOMBRE,p.dni as DNI,ca.nombre as CALLE,p.numeroCalle as NÚMERO_CALLE,
l.nombre as LOCALIDAD,pr.nombre as PROVINCIA from pasajero p inner join calle ca on p.calle_idCalle=ca.idCalle inner join
localidad l on p.localidad_idLocalidad=l.idLocalidad inner join provincia pr on p.provincia_idProvincia=pr.idProvincia;
-- c. Listado de pasajeros de la empresa (apellido, nombre, dni, domicilio)
-- mostrando sólo a los que participan del programa de viajeros frecuentes,
-- ordenados por apellido y nombre.
select p.apellido as APELLIDO,p.nombre as NOMBRE,p.dni as DNI,ca.nombre as CALLE,p.numeroCalle as NÚMERO_CALLE,
l.nombre as LOCALIDAD,pr.nombre as PROVINCIA from pasajero p inner join calle ca on p.calle_idCalle=ca.idCalle inner join
localidad l on p.localidad_idLocalidad=l.idLocalidad inner join provincia pr on p.provincia_idProvincia=pr.idProvincia
where p.viajeroFrecuente=true order by p.apellido,p.nombre;
-- d. Listado de los aviones de la compañía, (marca, modelo, matrícula, fecha de
-- entrada en servicio, país de origen).
select ma.nombre as MARCA,mo.nombre as MODELO,a.matricula as MATRÍCULA,a.fechaComienzo as FECHA_DE_ENTRADA_EN_SERVICIO,
p.nombre as PAÍS_DE_ORIGEN from avion a inner join modelo mo on a.modelo_idModelo=mo.idModelo inner join marca ma on
mo.codigoMarca=ma.codigo inner join pais p on ma.pais_idPais=p.idPais;
-- e. Listado de los aviones de la compañía, (marca, modelo, matrícula, fecha de
-- entrada en servicio, país de origen) cuyo país de origen sea “Alemania”.
select ma.nombre as MARCA,mo.nombre as MODELO,a.matricula as MATRÍCULA,a.fechaComienzo as FECHA_DE_ENTRADA_EN_SERVICIO,
p.nombre as PAÍS_DE_ORIGEN from avion a inner join modelo mo on a.modelo_idModelo=mo.idModelo inner join marca ma on
mo.codigoMarca=ma.codigo inner join pais p on ma.pais_idPais=p.idPais where p.nombre="Alemania";
-- f. Listado de vuelos realizados mostrando código, marca, modelo y matrícula
-- del avión, Código IATA del Aeropuerto origen, Código IATA del Aeropuerto
-- destino, fecha hora partida, fecha hora llegada y CUIL piloto.
select vuelo.codigo as código_vuelo,marca.nombre as marca_del_avión,modelo.nombre as modelo_del_avión,vuelo.matriculaAvion
as matrícula_del_avión,vuelo.codigoAeropuertoOrigen as aeropuerto_origen_codigoIATA,vuelo.codigoAeropuertoDestino as
aeropuerto_destino_codigoIATA,vuelo.fechaPartida as fecha_de_partida,vuelo.horaPartida as hora_de_partida,
vuelo.fechaArribo as fecha_de_llegada,vuelo.horaArribo as hora_de_llegada,vuelo.cuilPiloto as CUIL_piloto from vuelo inner
join avion on vuelo.matriculaAvion=avion.matricula inner join modelo on avion.modelo_idModelo=modelo.idModelo inner join
marca on modelo.codigoMarca=marca.codigo;
-- g. Listado de vuelos realizados mostrando código, marca, modelo y matrícula
-- del avión, Código IATA del Aeropuerto origen, Código IATA del Aeropuerto
-- destino, fecha hora partida, fecha hora llegada y CUIL piloto que hayan
-- partido del aeropuerto “BUE” ordenados por fecha hora de partida.
select vuelo.codigo as código_vuelo,marca.nombre as marca_avión,modelo.nombre as modelo_avión,avion.matricula as
matricula_avion,vuelo.codigoAeropuertoOrigen as aeropuerto_origen_codigoIATA,vuelo.codigoAeropuertoDestino as
aeropuerto_destino_codigoIATA,vuelo.fechaPartida as fecha_de_partida,vuelo.horaPartida as hora_de_partida,
vuelo.fechaArribo as fecha_de_llegada,vuelo.horaArribo as hora_de_llegada,vuelo.cuilPiloto as CUIL_piloto from vuelo inner
join avion on vuelo.matriculaAvion=avion.matricula inner join modelo on avion.modelo_idModelo=modelo.idModelo inner join
marca on modelo.codigoMarca=marca.codigo where vuelo.codigoAeropuertoOrigen="BUE" order by vuelo.fechaPartida,
vuelo.horaPartida;
-- h. Listado de vuelos realizados mostrando codigo, Código IATA del Aeropuerto
-- origen, Código IATA del Aeropuerto destino, fecha hora partida y fecha hora
-- llegada que hayan partido del aeropuerto “BUE” y hayan arribado al
-- aeropuerto “MDQ”.
select vuelo.codigo as código_vuelo,vuelo.codigoAeropuertoOrigen as aeropuerto_origen_codigoIATA,
vuelo.codigoAeropuertoDestino as aeropuerto_destino_codigoIATA,vuelo.fechaPartida as fecha_de_partida,vuelo.horaPartida as
hora_de_partida,vuelo.fechaArribo as fecha_de_llegada,vuelo.horaArribo as hora_de_llegada from vuelo where 
vuelo.codigoAeropuertoOrigen="BUE" and vuelo.codigoAeropuertoDestino="MDQ";
-- i. Listado de todos los vuelos realizados y sus pasajeros, (código, apellido, nombre, dni)
select listado.codigoVuelo as CÓDIGO_VUELO,pasajero.apellido as APELLIDO_PASAJERO,pasajero.nombre as NOMBRE_PASAJERO,
pasajero.dni as DNI_PASAJERO from listado inner join pasajero on listado.dniPasajero=pasajero.dni order by 
listado.codigoVuelo;
-- j. Cantidad de vuelos realizados que hayan partido del aeropuerto “BUE” y
-- hayan arribado al aeropuerto “BRC”
select count(*) as Cantidad_de_vuelos_desde_aeropuerto_BUE_hasta_BRC from vuelo where codigoAeropuertoOrigen="BUE" and
codigoAeropuertoDestino="BRC";
-- k. Cantidad de vuelos realizados que hayan partido del aeropuerto “MDQ”
select count(*) as Cantidad_de_vuelos_que_partieron_desde_aeropuerto_MDQ from vuelo where codigoAeropuertoOrigen="MDQ";
-- l. Cantidad de vuelos realizados, por aeropuerto de origen (Código IATA,
-- cantidad)
select vuelo.codigoAeropuertoOrigen as CodigoIATA_Aeropuerto_origen,count(*) as Cantidad_de_vuelos_realizados from vuelo
group by vuelo.codigoAeropuertoOrigen;
-- m. Cantidad de pasajeros transportados, por localidad del pasajero (localidad,
-- cantidad) group by localidad.idLocalidad
select localidad.nombre as Localidad,count(*) as Cantidad_de_pasajeros_transportados from listado inner join pasajero on
listado.dniPasajero=pasajero.dni inner join localidad on pasajero.localidad_idLocalidad=localidad.idLocalidad
group by localidad.idLocalidad; 
-- n. Cantidad de pasajeros transportados por día (fecha, cantidad)
select vuelo.fechaPartida as Fecha_del_vuelo,count(*) as Cantidad_de_pasajeros_transportados from listado inner join vuelo
on listado.codigoVuelo=vuelo.codigo group by day(vuelo.fechaPartida) order by vuelo.fechaPartida asc;
-- o. Cantidad de vuelos por pasajero (apellido, nombre, dni, cantidad)
select p.apellido as APELLIDO_PASAJERO,p.nombre as NOMBRE_PASAJERO,p.dni as DNI_PASAJERO,count(*) as 
Cantidad_de_vuelos_realizados from vuelo v inner join listado l on v.codigo=l.codigoVuelo inner join pasajero p on
l.dniPasajero=p.dni group by p.dni order by p.dni asc;