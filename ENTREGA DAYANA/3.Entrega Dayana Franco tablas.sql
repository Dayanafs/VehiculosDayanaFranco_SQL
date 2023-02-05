create schema KeepVehiculos authorization vgtyhnwy


--TABLA GRUPOS
create table keepVehiculos.Grupo
(
	IdGrupo varchar(100) not null,
	Grupo varchar(200) not null,
	constraint keepVehiculos_Grupo_Pk primary key(IdGrupo)
);

	insert into keepVehiculos.grupo (Idgrupo, grupo) values('VOLKSWAGEN ','VOLKSWAGEN ');
	insert into keepVehiculos.grupo (Idgrupo, grupo) values('BMW','BMW');
	insert into keepVehiculos.grupo (Idgrupo, grupo) values('RENAULT','RENAULT');


--TABLA Marca
create table keepVehiculos.Marca
(
	Idmarca varchar(100) not null,
	Marca varchar(500) not null,
	Grupo varchar (100)
);

	alter table keepVehiculos.Marca 
	add constraint Idmarca_pk primary key (Idmarca);

	alter table keepVehiculos.Marca
	add constraint grupo_en_tabla_marca_FK foreign key (grupo) references keepVehiculos.grupo (IdGrupo);

	insert into keepVehiculos.Marca(Idmarca,Marca,Grupo) values('RENAULT','RENAULT','RENAULT');
	insert into keepVehiculos.Marca(Idmarca,Marca,Grupo) values('DACIA','DACIA','RENAULT');
	insert into keepVehiculos.Marca(Idmarca,Marca,Grupo) values('AUDI','AUDI','VOLKSWAGEN ');
	insert into keepVehiculos.Marca(Idmarca,Marca,Grupo) values('SEAT','SEAT','VOLKSWAGEN ');
	insert into keepVehiculos.Marca(Idmarca,Marca,Grupo) values('ŠKODA','ŠKODA','VOLKSWAGEN ');
	insert into keepVehiculos.Marca(Idmarca,Marca,Grupo) values('BENTLEY','BENTLEY','VOLKSWAGEN ');
	insert into keepVehiculos.Marca(Idmarca,Marca,Grupo) values('BUGATTI','BUGATTI','VOLKSWAGEN ');
	insert into keepVehiculos.Marca(Idmarca,Marca,Grupo) values('PORSCHE','PORSCHE','VOLKSWAGEN ');
	insert  into keepVehiculos.Marca(Idmarca,Marca,Grupo) values('BMW','BMW','BMW');
	insert into keepVehiculos.Marca(Idmarca,Marca,Grupo) values('MINI','MINI','BMW');
	insert into keepVehiculos.Marca(Idmarca,Marca,Grupo) values('ROLLS ROYCE','ROLLS ROYCE','BMW');


--TABLA MODELO 
create table keepVehiculos.Modelo_Vehiculo(
	IdModelo varchar(200) not null,
	idMarca varchar (100) not null,
	Modelo varchar(200) not null,
	constraint IdModelo_PK primary key (IdModelo)
);

alter table keepVehiculos.modelo_vehiculo 
add constraint idmarca_en_tablamodelo_FK foreign key (idMarca) references keepVehiculos.marca (idMarca);

	insert into keepVehiculos.Modelo_Vehiculo(IdModelo,idMarca,Modelo) values('VOSETA','SEAT','TARRACO');
	insert into keepVehiculos.Modelo_Vehiculo(IdModelo,idMarca,Modelo) values('BMROGH','ROLLS ROYCE','GHOST');
	insert into keepVehiculos.Modelo_Vehiculo(IdModelo,idMarca,Modelo) values('REDANU','DACIA','NUEVO SPRING');
	insert into keepVehiculos.Modelo_Vehiculo(IdModelo,idMarca,Modelo) values('REDANS','DACIA','NUEVO SANDERO');
	insert into keepVehiculos.Modelo_Vehiculo(IdModelo,idMarca,Modelo) values('VOBUCH','BUGATTI','CHIRON');
	insert into keepVehiculos.Modelo_Vehiculo(IdModelo,idMarca,Modelo) values('VOPOCA','PORSCHE','CAYENNE');
	insert into keepVehiculos.Modelo_Vehiculo(IdModelo,idMarca,Modelo) values('RERETW','RENAULT','TWINGO');
	insert into keepVehiculos.Modelo_Vehiculo(IdModelo,idMarca,Modelo) values('RERECL','RENAULT','CLIO');
	insert into keepVehiculos.Modelo_Vehiculo(IdModelo,idMarca,Modelo) values('BMROWR','ROLLS ROYCE','WRAITH');
	insert into keepVehiculos.Modelo_Vehiculo(IdModelo,idMarca,Modelo) values('VOŠKEN','ŠKODA','ENYAQ COUPÉ IV');
	insert into keepVehiculos.Modelo_Vehiculo(IdModelo,idMarca,Modelo) values('REDANS2','DACIA','NUEVO SANDERO STEPWAY');
	insert into keepVehiculos.Modelo_Vehiculo(IdModelo,idMarca,Modelo) values('BMMICO','MINI','COOPER 5-PUERTAS');
	insert into keepVehiculos.Modelo_Vehiculo(IdModelo,idMarca,Modelo) values('VOAUQ8','AUDI','Q8');


--TABLA ASEGURADORA
create table keepVehiculos.Aseguradora(
	idAseguradora varchar(20) not null,
	Nombre_Aseguradora varchar(100) not null
);

alter table keepVehiculos.aseguradora 
	add constraint idAseguradora_pk primary key (idAseguradora);

	insert into keepVehiculos.aseguradora (idaseguradora, nombre_aseguradora) values('MAPFRE','MAPFRE');
	insert into keepVehiculos.aseguradora (idaseguradora, nombre_aseguradora) values('MMT','MMT');
	insert into keepVehiculos.aseguradora (idaseguradora, nombre_aseguradora) values('AXA','AXA');
	insert into keepVehiculos.aseguradora (idaseguradora, nombre_aseguradora) values('ALLIANZ','ALLIANZ');
	insert into keepVehiculos.aseguradora (idaseguradora, nombre_aseguradora) values('ZURICH','ZURICH');
	insert into keepVehiculos.aseguradora (idaseguradora, nombre_aseguradora) values('GENERALI','GENERALI');

--TABLA TIPO DE MONEDA
create table keepVehiculos.Tipo_de_moneda
(idmoneda varchar(100) not null,
nombre_moneda varchar(100) not null
);

alter table keepVehiculos.Tipo_de_moneda 
add constraint idmoneda_pk primary key (idmoneda);

	insert into keepVehiculos.TIPO_DE_MONEDA (idmoneda, nombre_moneda) values('EURO','EURO');
	insert into keepVehiculos.TIPO_DE_MONEDA (idmoneda, nombre_moneda) values('USD','DÓLAR');
	insert into keepVehiculos.TIPO_DE_MONEDA (idmoneda, nombre_moneda) values('COP','PESO COLOMBIANO');


---TABLA COLOR
create table keepVehiculos.Color
(
IdColor varchar(100) not null,
Nombre_Color varchar(200) not null
);

	alter table keepVehiculos.color 
	add constraint IdColor_Pk primary key (IdColor);

	insert into keepVehiculos.color(IDCOLOR,NOMBRE_COLOR) values('NEGRO','NEGRO');
	insert into keepVehiculos.color(IDCOLOR,NOMBRE_COLOR) values('BLANCO','BLANCO');
	insert into keepVehiculos.color(IDCOLOR,NOMBRE_COLOR) values('ROJO','ROJO');
	insert into keepVehiculos.color(IDCOLOR,NOMBRE_COLOR) values('AZUL','AZUL');
	insert into keepVehiculos.color(IDCOLOR,NOMBRE_COLOR) values('GRIS','GRIS');
	insert into keepVehiculos.color(IDCOLOR,NOMBRE_COLOR) values('PLATA','PLATA');



---TABLA NUMERO DE POLIZA

create table keepVehiculos.Número_de_Póliza(
IdVehiculo varchar(20) not null,
IdnúmerodePóliza varchar(20) not null,
IdAseguradora varchar(100) not null
);

alter table keepvehiculos.Número_de_Póliza 
add constraint IdnúmerodePóliza_pk primary key (IdnúmerodePóliza);

insert into keepVehiculos.Número_de_Póliza(IdnúmerodePóliza,IdVehiculo,IdAseguradora) values('6152','1-VOSETA','GENERALI');
insert into keepVehiculos.Número_de_Póliza(IdnúmerodePóliza,IdVehiculo,IdAseguradora) values('3270','2-BMROGH','AXA');
insert into keepVehiculos.Número_de_Póliza(IdnúmerodePóliza,IdVehiculo,IdAseguradora) values('4376','3-REDANU','ALLIANZ');
insert into keepVehiculos.Número_de_Póliza(IdnúmerodePóliza,IdVehiculo,IdAseguradora) values('6495','4-REDANU','GENERALI');
insert into keepVehiculos.Número_de_Póliza(IdnúmerodePóliza,IdVehiculo,IdAseguradora) values('6557','5-VOBUCH','GENERALI');
insert into keepVehiculos.Número_de_Póliza(IdnúmerodePóliza,IdVehiculo,IdAseguradora) values('1688','6-VOPOCA','MAPFRE');
insert into keepVehiculos.Número_de_Póliza(IdnúmerodePóliza,IdVehiculo,IdAseguradora) values('5794','7-RERETW','ZURICH');
insert into keepVehiculos.Número_de_Póliza(IdnúmerodePóliza,IdVehiculo,IdAseguradora) values('1811','8-REDANU','MAPFRE');
insert into keepVehiculos.Número_de_Póliza(IdnúmerodePóliza,IdVehiculo,IdAseguradora) values('496','9-RERETW','ALLIANZ');
insert into keepVehiculos.Número_de_Póliza(IdnúmerodePóliza,IdVehiculo,IdAseguradora) values('21022','10-BMROGH','MMT');
insert into keepVehiculos.Número_de_Póliza(IdnúmerodePóliza,IdVehiculo,IdAseguradora) values('31138','11-RERECL','AXA');
insert into keepVehiculos.Número_de_Póliza(IdnúmerodePóliza,IdVehiculo,IdAseguradora) values('11270','12-BMROWR','MAPFRE');
insert into keepVehiculos.Número_de_Póliza(IdnúmerodePóliza,IdVehiculo,IdAseguradora) values('41397','13-VOŠKEN','ALLIANZ');
insert into keepVehiculos.Número_de_Póliza(IdnúmerodePóliza,IdVehiculo,IdAseguradora) values('51469','14-REDANU','ZURICH');
insert into keepVehiculos.Número_de_Póliza(IdnúmerodePóliza,IdVehiculo,IdAseguradora) values('2155','15-BMMICO','MMT');
insert into keepVehiculos.Número_de_Póliza(IdnúmerodePóliza,IdVehiculo,IdAseguradora) values('1166','16-VOPOCA','MAPFRE');
insert into keepVehiculos.Número_de_Póliza(IdnúmerodePóliza,IdVehiculo,IdAseguradora) values('51754','17-VOAUQ8','ZURICH');
insert into keepVehiculos.Número_de_Póliza(IdnúmerodePóliza,IdVehiculo,IdAseguradora) values('11858','18-VOAUQ8','MAPFRE');
insert into keepVehiculos.Número_de_Póliza(IdnúmerodePóliza,IdVehiculo,IdAseguradora) values('51952','19-BMMICO','ZURICH');
insert into keepVehiculos.Número_de_Póliza(IdnúmerodePóliza,IdVehiculo,IdAseguradora) values('12067','20-VOSETA','MAPFRE');


alter table keepVehiculos.Número_de_Póliza 
add constraint IdAsseguradora_en_Numerodepoliza_FK foreign key (idAseguradora) references keepVehiculos.aseguradora (IdAseguradora);


--TABLA REVISIONES

create table keepVehiculos.Revisiones_del_vehiculo
(
IdVehiculo varchar(20) not null, 
IdRevisión varchar(20) not null, 
Orden Integer,
Kilometros_en_la_revisión integer not null,
Importe_de_la_revisión NUMERIC (8,2) not null,
idmoneda varchar(10) not null,
Fecha_de_la_revisión date not null, 
constraint Revisiones_del_vehiculo_pk primary key (IdRevisión)
);

alter table keepVehiculos.Revisiones_del_vehiculo 
	add constraint Revisiones_del_vehiculo_tipodemoneda_FK 
	foreign key (idmoneda) references keepVehiculos.Tipo_de_moneda(idmoneda);

	
	
	
	insert into keepVehiculos.Revisiones_del_vehiculo(IdVehiculo,IdRevisión,Orden,Kilometros_en_la_revisión,Importe_de_la_revisión,idmoneda,Fecha_de_la_revisión) values('1-VOSETA','R-1','1','70000','1000.50','EURO','11/21/2011');
	insert into keepVehiculos.Revisiones_del_vehiculo(IdVehiculo,IdRevisión,Orden,Kilometros_en_la_revisión,Importe_de_la_revisión,idmoneda,Fecha_de_la_revisión) values('2-BMROGH','R-2','2','25000','10000','EURO','04/16/2015');
	insert into keepVehiculos.Revisiones_del_vehiculo(IdVehiculo,IdRevisión,Orden,Kilometros_en_la_revisión,Importe_de_la_revisión,idmoneda,Fecha_de_la_revisión) values('3-REDANU','R-3','3','12500','800','EURO','12/09/2008');
	insert into keepVehiculos.Revisiones_del_vehiculo(IdVehiculo,IdRevisión,Orden,Kilometros_en_la_revisión,Importe_de_la_revisión,idmoneda,Fecha_de_la_revisión) values('4-REDANU','R-4','4','25000','1200','EURO','11/30/2014');
	insert into keepVehiculos.Revisiones_del_vehiculo(IdVehiculo,IdRevisión,Orden,Kilometros_en_la_revisión,Importe_de_la_revisión,idmoneda,Fecha_de_la_revisión) values('5-VOBUCH','R-5','5','5000','5000','EURO','10/06/2004');
	insert into keepVehiculos.Revisiones_del_vehiculo(IdVehiculo,IdRevisión,Orden,Kilometros_en_la_revisión,Importe_de_la_revisión,idmoneda,Fecha_de_la_revisión) values('6-VOPOCA','R-6','6','65000','4000','EURO','05/25/2000');
	insert into keepVehiculos.Revisiones_del_vehiculo(IdVehiculo,IdRevisión,Orden,Kilometros_en_la_revisión,Importe_de_la_revisión,idmoneda,Fecha_de_la_revisión) values('7-RERETW','R-7','7','80000','1000','EURO','03/19/2022');
	insert into keepVehiculos.Revisiones_del_vehiculo(IdVehiculo,IdRevisión,Orden,Kilometros_en_la_revisión,Importe_de_la_revisión,idmoneda,Fecha_de_la_revisión) values('8-REDANU','R-8','8','25000','1000','EURO','06/24/2010');
	insert into keepVehiculos.Revisiones_del_vehiculo(IdVehiculo,IdRevisión,Orden,Kilometros_en_la_revisión,Importe_de_la_revisión,idmoneda,Fecha_de_la_revisión) values('9-RERETW','R-9','9','45000','1000','EURO','12/26/2006');
	insert into keepVehiculos.Revisiones_del_vehiculo(IdVehiculo,IdRevisión,Orden,Kilometros_en_la_revisión,Importe_de_la_revisión,idmoneda,Fecha_de_la_revisión) values('10-BMROGH','R-10','10','50000','10000','EURO','07/18/2017');
	insert into keepVehiculos.Revisiones_del_vehiculo(IdVehiculo,IdRevisión,Orden,Kilometros_en_la_revisión,Importe_de_la_revisión,idmoneda,Fecha_de_la_revisión) values('11-RERECL','R-11','11','80000','1000','EURO','06/10/2015');
	insert into keepVehiculos.Revisiones_del_vehiculo(IdVehiculo,IdRevisión,Orden,Kilometros_en_la_revisión,Importe_de_la_revisión,idmoneda,Fecha_de_la_revisión) values('12-BMROWR','R-12','12','25000','1000','EURO','11/25/2017');
	insert into keepVehiculos.Revisiones_del_vehiculo(IdVehiculo,IdRevisión,Orden,Kilometros_en_la_revisión,Importe_de_la_revisión,idmoneda,Fecha_de_la_revisión) values('13-VOŠKEN','R-13','13','85000','1000','EURO','12/12/2021');
	insert into keepVehiculos.Revisiones_del_vehiculo(IdVehiculo,IdRevisión,Orden,Kilometros_en_la_revisión,Importe_de_la_revisión,idmoneda,Fecha_de_la_revisión) values('14-REDANU','R-14','14','57000','1200','EURO','05/05/2008');
	insert into keepVehiculos.Revisiones_del_vehiculo(IdVehiculo,IdRevisión,Orden,Kilometros_en_la_revisión,Importe_de_la_revisión,idmoneda,Fecha_de_la_revisión) values('15-BMMICO','R-15','15','65000','2000','EURO','11/18/2001');
	insert into keepVehiculos.Revisiones_del_vehiculo(IdVehiculo,IdRevisión,Orden,Kilometros_en_la_revisión,Importe_de_la_revisión,idmoneda,Fecha_de_la_revisión) values('16-VOPOCA','R-16','16','88000','5000','EURO','02/28/2023');
	insert into keepVehiculos.Revisiones_del_vehiculo(IdVehiculo,IdRevisión,Orden,Kilometros_en_la_revisión,Importe_de_la_revisión,idmoneda,Fecha_de_la_revisión) values('17-VOAUQ8','R-17','17','35000','2000','EURO','09/22/2009');
	insert into keepVehiculos.Revisiones_del_vehiculo(IdVehiculo,IdRevisión,Orden,Kilometros_en_la_revisión,Importe_de_la_revisión,idmoneda,Fecha_de_la_revisión) values('18-VOAUQ8','R-18','18','47500','2000','EURO','03/29/2023');
	insert into keepVehiculos.Revisiones_del_vehiculo(IdVehiculo,IdRevisión,Orden,Kilometros_en_la_revisión,Importe_de_la_revisión,idmoneda,Fecha_de_la_revisión) values('19-BMMICO','R-19','19','72500','1800','EURO','06/24/2011');
	insert into keepVehiculos.Revisiones_del_vehiculo(IdVehiculo,IdRevisión,Orden,Kilometros_en_la_revisión,Importe_de_la_revisión,idmoneda,Fecha_de_la_revisión) values('20-VOSETA','R-20','20','53000','1000','EURO','09/21/2022');



--TABLA 1 : VEHICULOS
create table keepVehiculos.vehiculotable
(
IdVehiculo varchar(20) not null, --PK
IdModelo varchar(20) not null,
IdColor varchar(100) null,
IdnúmerodePóliza varchar(20) not null,
Totalkilometros integer not null,
Fecha_de_compra date not null,
Fecha_de_baja date not null,
Idmatricula varchar(20) not null,
Idrevisión varchar(20) not null,
constraint vehiculotable_Pk primary key(IdVehiculo)
);
alter table keepVehiculos.vehiculotable 
add constraint vehiculotable_IdModelo_FK foreign key (IdModelo) 
references keepVehiculos.Modelo_Vehiculo (IdModelo);

alter table keepVehiculos.vehiculotable 
add constraint idRevision_en_vehiculotable_FK foreign key (Idrevisión) 
references keepVehiculos.revisiones_del_vehiculo (IdRevisión);



alter table keepVehiculos.vehiculotable 
add constraint vehiculotable_IdColor_FK foreign key (IdColor) references keepVehiculos.Color (IdColor);

alter table keepVehiculos.vehiculotable 
add constraint vehiculotable_id_numero_de_poliza_FK foreign key (IdnúmerodePóliza) 
references keepVehiculos.número_de_póliza (IdnúmerodePóliza);

insert  into keepVehiculos.vehiculotable(IdVehiculo,IdModelo,IdColor,IdnúmerodePóliza,Totalkilometros,Fecha_de_compra,Fecha_de_baja,Idmatricula,Idrevisión) values('1-VOSETA','VOSETA','NEGRO','6152','84202','07/24/2011','01/01/2022','ZDZ591','R-1');
insert into keepVehiculos.vehiculotable(IdVehiculo,IdModelo,IdColor,IdnúmerodePóliza,Totalkilometros,Fecha_de_compra,Fecha_de_baja,Idmatricula,Idrevisión) values('2-BMROGH','BMROGH','BLANCO','3270','33188','12/17/2014','01/01/4000','EIQ124','R-2');
insert into keepVehiculos.vehiculotable(IdVehiculo,IdModelo,IdColor,IdnúmerodePóliza,Totalkilometros,Fecha_de_compra,Fecha_de_baja,Idmatricula,Idrevisión) values('3-REDANU','REDANU','BLANCO','4376','77653','08/11/2008','01/01/4000','IOL348','R-3');
insert into keepVehiculos.vehiculotable(IdVehiculo,IdModelo,IdColor,IdnúmerodePóliza,Totalkilometros,Fecha_de_compra,Fecha_de_baja,Idmatricula,Idrevisión) values('4-REDANU','REDANS','BLANCO','6495','54843','08/02/2014','01/01/4000','DSV766','R-4');
insert into keepVehiculos.vehiculotable(IdVehiculo,IdModelo,IdColor,IdnúmerodePóliza,Totalkilometros,Fecha_de_compra,Fecha_de_baja,Idmatricula,Idrevisión) values('5-VOBUCH','VOBUCH','BLANCO','6557','88280','06/08/2004','01/01/4000','IQR225','R-5');
insert into keepVehiculos.vehiculotable(IdVehiculo,IdModelo,IdColor,IdnúmerodePóliza,Totalkilometros,Fecha_de_compra,Fecha_de_baja,Idmatricula,Idrevisión) values('6-VOPOCA','VOPOCA','ROJO','1688','71487','01/26/2000','01/01/4000','SUG823','R-6');
insert into keepVehiculos.vehiculotable(IdVehiculo,IdModelo,IdColor,IdnúmerodePóliza,Totalkilometros,Fecha_de_compra,Fecha_de_baja,Idmatricula,Idrevisión) values('7-RERETW','RERETW','AZUL','5794','89024','11/19/2021','01/01/4000','YJS818','R-7');
insert into keepVehiculos.vehiculotable(IdVehiculo,IdModelo,IdColor,IdnúmerodePóliza,Totalkilometros,Fecha_de_compra,Fecha_de_baja,Idmatricula,Idrevisión) values('8-REDANU','REDANU','AZUL','1811','41873','02/24/2010','01/01/4000','AHR545','R-8');
insert into keepVehiculos.vehiculotable(IdVehiculo,IdModelo,IdColor,IdnúmerodePóliza,Totalkilometros,Fecha_de_compra,Fecha_de_baja,Idmatricula,Idrevisión) values('9-RERETW','RERETW','NEGRO','496','49869','08/28/2006','01/01/4000','TVD915','R-9');
insert into keepVehiculos.vehiculotable(IdVehiculo,IdModelo,IdColor,IdnúmerodePóliza,Totalkilometros,Fecha_de_compra,Fecha_de_baja,Idmatricula,Idrevisión) values('10-BMROGH','BMROGH','GRIS','21022','63958','03/20/2017','01/01/4000','CGV644','R-10');
insert into keepVehiculos.vehiculotable(IdVehiculo,IdModelo,IdColor,IdnúmerodePóliza,Totalkilometros,Fecha_de_compra,Fecha_de_baja,Idmatricula,Idrevisión) values('11-RERECL','RERECL','PLATA','31138','82036','02/10/2015','01/01/4000','VTN334','R-11');
insert into keepVehiculos.vehiculotable(IdVehiculo,IdModelo,IdColor,IdnúmerodePóliza,Totalkilometros,Fecha_de_compra,Fecha_de_baja,Idmatricula,Idrevisión) values('12-BMROWR','BMROWR','ROJO','11270','31383','07/28/2017','01/01/4000','RRE898','R-12');
insert into keepVehiculos.vehiculotable(IdVehiculo,IdModelo,IdColor,IdnúmerodePóliza,Totalkilometros,Fecha_de_compra,Fecha_de_baja,Idmatricula,Idrevisión) values('13-VOŠKEN','VOŠKEN','NEGRO','41397','93855','08/14/2021','01/01/4000','EKF197','R-13');
insert into keepVehiculos.vehiculotable(IdVehiculo,IdModelo,IdColor,IdnúmerodePóliza,Totalkilometros,Fecha_de_compra,Fecha_de_baja,Idmatricula,Idrevisión) values('14-REDANU','REDANS2','NEGRO','51469','63707','01/06/2008','01/01/4000','MDJ641','R-14');
insert into keepVehiculos.vehiculotable(IdVehiculo,IdModelo,IdColor,IdnúmerodePóliza,Totalkilometros,Fecha_de_compra,Fecha_de_baja,Idmatricula,Idrevisión) values('15-BMMICO','BMMICO','GRIS','2155','69807','07/21/2001','01/01/4000','VHU899','R-15');
insert into keepVehiculos.vehiculotable(IdVehiculo,IdModelo,IdColor,IdnúmerodePóliza,Totalkilometros,Fecha_de_compra,Fecha_de_baja,Idmatricula,Idrevisión) values('16-VOPOCA','VOPOCA','PLATA','1166','88500','10/31/2022','01/01/4000','COJ561','R-16');
insert into keepVehiculos.vehiculotable(IdVehiculo,IdModelo,IdColor,IdnúmerodePóliza,Totalkilometros,Fecha_de_compra,Fecha_de_baja,Idmatricula,Idrevisión) values('17-VOAUQ8','VOAUQ8','GRIS','51754','42075','05/25/2009','01/01/4000','JFB169','R-17');
insert into keepVehiculos.vehiculotable(IdVehiculo,IdModelo,IdColor,IdnúmerodePóliza,Totalkilometros,Fecha_de_compra,Fecha_de_baja,Idmatricula,Idrevisión) values('18-VOAUQ8','VOAUQ8','PLATA','11858','54904','11/29/2022','01/01/4000','HRY496','R-18');
insert into keepVehiculos.vehiculotable(IdVehiculo,IdModelo,IdColor,IdnúmerodePóliza,Totalkilometros,Fecha_de_compra,Fecha_de_baja,Idmatricula,Idrevisión) values('19-BMMICO','BMMICO','GRIS','51952','78111','02/24/2011','01/01/4000','JZQ454','R-19');
insert into keepVehiculos.vehiculotable(IdVehiculo,IdModelo,IdColor,IdnúmerodePóliza,Totalkilometros,Fecha_de_compra,Fecha_de_baja,Idmatricula,Idrevisión) values('20-VOSETA','VOSETA','PLATA','12067','53609','05/24/2022','10/01/2021','JIW857','R-20');



---CONSULTA REVISIONES


select t.idvehiculo , rdv.kilometros_en_la_revisión , rdv.fecha_de_la_revisión , rdv.importe_de_la_revisión , rdv.idmoneda 
from vehiculosdayana.tablavehiculo t 
left join keepvehiculos.revisiones_del_vehiculo rdv 
on t.idrevisión = rdv.idrevisión 


---CONSULTA VEHICULOS ACTIVOS
select t.idvehiculo as Vehiculo,
mv.modelo ||' , '||m.marca ||' , '||g.grupo as Modelo_Marca_GrupoEmpresarial, 
t.Fecha_de_compra ,
t.idmatricula as Matricula, 
c.nombre_color as Color, 
t.totalkilometros as Kilometros_totales, 
A.nombre_aseguradora as Aseguradora, 
ndp.idnúmerodepóliza as Num_poliza 

from keepvehiculos.vehiculotable t

inner join keepvehiculos.modelo_vehiculo mv 
on t.idmodelo = mv.idmodelo 

inner join keepvehiculos.marca m 
on mv.idmarca = m.idmarca 

inner join keepvehiculos.grupo g 
on m.grupo = g.idgrupo 

inner join keepvehiculos.color c 
on t.idcolor = c.idcolor 

inner join keepvehiculos.número_de_póliza ndp 
on T.idnúmerodepóliza = NDP.idnúmerodepóliza

inner join keepvehiculos.aseguradora a 
on NDP.idaseguradora = A.idaseguradora 
where Fecha_de_baja = '4000-01-01'
