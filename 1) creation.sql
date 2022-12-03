create schema if not exists aeropuerto;
use aeropuerto;
create table pais(
	idPais int primary key,
    nombre varchar(25) not null
    );
create table ciudad(
	idCiudad int primary key,
    nombre varchar(30) not null
    );
create table calle(
	idCalle int primary key,
    nombre varchar(20) not null
    );
create table localidad(
	idLocalidad int primary key,
    nombre varchar(20) not null
    );
create table provincia(
	idProvincia int primary key,
    nombre varchar(20) not null
    );
create table marca(
	codigo int primary key,
    nombre varchar(20) not null,
    pais_idPais int not null,
    foreign key(pais_idPais) references pais(idPais)
    );
create table modelo(
	idModelo int primary key,
    nombre varchar(10) not null,
    codigoMarca int not null,
    foreign key(codigoMarca) references marca(codigo)
    );
create table avion(
	matricula varchar(8) primary key,
    fechaComienzo date not null,
    modelo_idModelo int not null,
    foreign key(modelo_idModelo) references modelo(idModelo)
    );
create table piloto(
	nombre varchar(20) not null,
    apellido varchar(20) not null,
	dni int not null,
    cuil varchar(15) primary key,
    fechaIngreso date not null,
    calle_idCalle int not null,
    localidad_idLocalidad int not null,
    provincia_idProvincia int not null,
    numeroCalle int not null,
    foreign key(calle_idCalle) references calle(idCalle),
    foreign key(localidad_idLocalidad) references localidad(idLocalidad),
    foreign key(provincia_idProvincia) references provincia(idProvincia)
    );
create table aeropuerto(
	codigoIATA varchar(5) primary key,
    nombre varchar(30) not null,
    ciudad_idCiudad int not null,
    foreign key(ciudad_idCiudad) references ciudad(idCiudad)
    );
create table vuelo(
	codigo varchar(8) primary key,
    matriculaAvion varchar(8) not null,
    cuilPiloto varchar(15) not null,
    codigoAeropuertoOrigen varchar(5) not null,
    codigoAeropuertoDestino varchar(5) not null,
    fechaPartida date not null,
    horaPartida time not null,
    fechaArribo date not null,
    horaArribo time not null,
    foreign key(matriculaAvion) references avion(matricula),
    foreign key(cuilPiloto) references piloto(cuil),
    foreign key(codigoAeropuertoOrigen) references aeropuerto(codigoIATA),
    foreign key(codigoAeropuertoDestino) references aeropuerto(codigoIATA)
	);
create table pasajero(
	nombre varchar(20) not null,
    apellido varchar(20) not null,
    dni int primary key,
    viajeroFrecuente bool not null,
    calle_idCalle int not null,
    localidad_idLocalidad int not null,
    provincia_idProvincia int not null,
    numeroCalle int not null,
    foreign key(calle_idCalle) references calle(idCalle),
    foreign key(localidad_idLocalidad) references localidad(idLocalidad),
    foreign key(provincia_idProvincia) references provincia(idProvincia)
    );
create table listado(
	codigoVuelo varchar(8),
    dniPasajero int,
    foreign key(codigoVuelo) references vuelo(codigo),
    foreign key(dniPasajero) references pasajero(dni),
    primary key(codigoVuelo,dniPasajero)
	);