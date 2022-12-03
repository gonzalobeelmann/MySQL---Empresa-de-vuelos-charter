-- Inserto datos en la tabla 1
insert into pais values(1,"Estados Unidos");
insert into pais values(2,"Alemania");
-- Inserto datos en la tabla 2
insert into ciudad values(1,"CABA");
insert into ciudad values(2,"Mar Del Plata");
insert into ciudad values(3,"San Carlos de Bariloche");
-- Inserto datos en la tabla 3
insert into calle values(1,"San Martín");
insert into calle values(2,"Azara");
insert into calle values(3,"Sarmiento");
insert into calle values(4,"Rivadavia");
insert into calle values(5,"Martinto");
insert into calle values(6,"Bolaños");
insert into calle values(7,"Loria");
insert into calle values(8,"Ituzaingo");
insert into calle values(9,"Roca");
insert into calle values(10,"Campichuelo");
insert into calle values(11,"Meeks");
insert into calle values(12,"Mamberti");
insert into calle values(13,"Amenabar");
insert into calle values(14,"Capello");
-- Inserto datos en la tabla 4
insert into localidad values(1,"CABA");
insert into localidad values(2,"Lomas de Zamora");
insert into localidad values(3,"Lanús");
insert into localidad values(4,"Avellaneda");
-- Inserto datos en la tabla 5
insert into provincia values(1,"CABA");
insert into provincia values(2,"Buenos Aires");
-- Inserto datos en la tabla 6
insert into marca values(1,"Cessna",1);
insert into marca values(2,"Beechcraft",1);
insert into marca values(3,"Fokker",2);
-- Inserto datos en la tabla 7
insert into modelo values(1,"Citation",1);
insert into modelo values(2,"Baron",2);
insert into modelo values(3,"F-27",3);
insert into modelo values(4,"King Air",2);
-- Inserto datos en la tabla 8
insert into avion values("LV-ABC",'2010-12-12',1);
insert into avion values("LV-CDE",'2011-10-01',2);
insert into avion values("LV-FGH",'2008-05-04',3);
insert into avion values("LV-IJK",'2014-06-07',1);
insert into avion values("LV-LMN",'2012-07-08',4);
-- Inserto datos en la tabla 9
insert into piloto values("Federico Bernardo","Juarez",12345678,"20-12345678-8",'1994-10-01',1,1,1,2235);
insert into piloto values("Franco","Lacoste",34567890,"20-34567890-1",'2003-07-01',2,2,2,1254);
insert into piloto values("Mariana","Laime",45678901,"27-45678901-1",'2001-04-01',3,3,2,500);
insert into piloto values("Germán Ignacio","Lopez",56789123,"20-56789123-3",'2013-05-01',4,1,1,2351);
insert into piloto values("Giuliano","Martinez",67891234,"20-67891234-4",'2010-07-01',5,3,2,663);
insert into piloto values("Adriana","Medina",78912345,"27-78912345-5",'2015-08-01',6,3,2,1256);
insert into piloto values("Melgarejo","Jair Alberto",90123456,"20-90123456-6",'2011-03-01',7,2,2,333);
-- Inserto datos en la tabla 10
insert into aeropuerto values("BUE","Aeroparque Jorge Newbery",1);
insert into aeropuerto values("MDQ","Astor Piazolla",2);
insert into aeropuerto values("BRC","Teniente Luis Candelaria",3);
-- Inserto datos en la tabla 11
insert into vuelo values("TT1234","LV-ABC","20-12345678-8","BUE","BRC",'2018-05-01','20:00','2018-05-01','23:45');
insert into vuelo values("TT3456","LV-CDE","27-78912345-5","BUE","MDQ",'2018-05-02','10:00','2018-05-02','12:00');
insert into vuelo values("TT1235","LV-ABC","20-12345678-8","BRC","BUE",'2018-05-02','07:00','2018-05-02','10:50');
insert into vuelo values("TT1256","LV-FGH","27-45678901-1","BUE","MDQ",'2018-05-02','08:00','2018-05-02','10:05');
insert into vuelo values("TT5632","LV-IJK","20-56789123-3","MDQ","BUE",'2018-05-03','07:00','2018-05-03','09:15');
insert into vuelo values("TT3333","LV-LMN","20-12345678-8","BUE","BRC",'2018-05-03','07:00','2018-05-03','10:50');
insert into vuelo values("TT1257","LV-FGH","27-45678901-1","BUE","MDQ",'2018-05-04','08:00','2018-05-04','10:05');
insert into vuelo values("TT3457","LV-CDE","27-78912345-5","MDQ","BUE",'2018-05-04','10:00','2018-05-04','12:00');
insert into vuelo values("TT5633","LV-IJK","20-56789123-3","BUE","MDQ",'2018-05-05','07:00','2018-05-05','09:15');
-- Inserto datos en la tabla 12
insert into pasajero values("Alejo","Barragan",11111111,true,8,3,2,123);
insert into pasajero values("Andrés Alfredo","Casas",22222222,true,9,1,1,4561);
insert into pasajero values("Barbara","Chaves",33333333,false,10,4,2,6532);
insert into pasajero values("Brisa","Chimbo",44444444,true,11,2,2,562);
insert into pasajero values("Camila","Chudoba",55555555,false,12,3,2,2356);
insert into pasajero values("Carlos","Cires",66666666,true,13,1,1,2345);
insert into pasajero values("Carlos Sebastián","Cusato",77777777,false,14,2,2,1589);
insert into pasajero values("Christian","Dominguez",88888888,true,13,1,1,356);
insert into pasajero values("Cristian","Escullini",99999999,true,11,2,2,1296);
insert into pasajero values("Cristian","Feijoo",10111213,true,1,4,2,3652);
-- Inserto datos en la tabla 13
insert into listado values("TT1234",44444444);
insert into listado values("TT1234",55555555);
insert into listado values("TT1234",66666666);
insert into listado values("TT3456",77777777);
insert into listado values("TT3456",88888888);
insert into listado values("TT3456",99999999);
insert into listado values("TT1235",44444444);
insert into listado values("TT1235",55555555);
insert into listado values("TT1256",11111111);
insert into listado values("TT1256",22222222);
insert into listado values("TT1256",33333333);
insert into listado values("TT5632",77777777);
insert into listado values("TT5632",88888888);
insert into listado values("TT5632",99999999);
insert into listado values("TT3333",77777777);
insert into listado values("TT3333",88888888);
insert into listado values("TT3333",99999999);
insert into listado values("TT1257",22222222);
insert into listado values("TT3457",77777777);
insert into listado values("TT3457",88888888);
insert into listado values("TT3457",99999999);
insert into listado values("TT5633",77777777);
insert into listado values("TT5633",88888888);
insert into listado values("TT5633",99999999);