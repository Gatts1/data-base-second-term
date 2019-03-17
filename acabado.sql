create database PromotoraEducativa
go

use PromotoraEducativa
go

create table Solicitante

  (

    Dni_Solicitante    char     (8)    not null  ,
	Nom_Solicitante    varchar  (35)   not null  ,
	Dir_Solicitante    varchar  (20)   not null  ,
	Ocu_Solicitante    varchar  (20)             ,
	Fono_Solicitante   varchar  (9)    not null  

	Primary Key (Dni_Solicitante)

  )
go

create table Administrativo

  (
    
	Dni_Administrativo    char      (8)    not null,
	Nom_Administrativo    varchar   (10)   not null

	Primary key (Dni_Administrativo)
  )

go

create table Boleta

  (

  Nro_Boleta            char      (20)   not null  ,
  Fec_Boleta            date                       ,
  Dni_Solicitante       char      (8)    not null  ,
  Nom_Solicitante       varchar   (35)   not null  ,
  Dni_Administrativo    char      (8)    not null  ,
  Nom_Administrativo    varchar   (10)   not null  

  Primary Key (Nro_Boleta),
  Foreign Key (Dni_Solicitante)  references  Solicitante ,
  Foreign Key (Dni_Administrativo)  references  Administrativo


  )

go


create table Concepto

  (
  
  Cod_Concepto      char(5)      not null ,
  Desc_Concepto     varchar(20)  not null 

  Primary key (Cod_Concepto) 

  )

  go


create table Detalle_Boleta

  (
  
  Nro_Boleta            char      (20)   not null ,
  Cod_Concepto          char      (5)    not null ,
  Cant_Concepto         char      (5)    not null ,
  Pre_Uni_Concepto      smallmoney

  Primary Key (Nro_Boleta,Cod_Concepto),
  Foreign Key (Nro_Boleta) references Boleta ,
  Foreign Key (Cod_Concepto) references Concepto
  
  
  )

go



    create table Alumno

  (
  
  Dni_Alumno         char      (8)    not null    ,
  Nom_Alumno         varchar   (20)   not null    ,
  Ape_Alumno         varchar   (20)   not null    ,
  Ed_ALumno          int                          ,
  Dir_Alumno         varchar   (30)   not null    ,
  Nac_Alumno         date                         ,
  Gra_Alumno         varchar   (2)    not null    ,
  Sec_Alumno         varchar   (2)    not null    
  
  Primary key (Dni_Alumno)

  )

  go



create table Matricula
 
  (
  
  Nro_Matricula        char     (20)   not null  ,
  Fec_Boleta           date                      ,
  Dni_Solicitante      char     (8)    not null  ,
  Dni_Alumno           char     (8)    not null  ,
  Dni_Administrativo   char     (8)    not null  ,

  Primary key (Nro_Matricula) ,
  Foreign Key (Dni_Solicitante) references Solicitante,
  Foreign Key (Dni_Alumno)      references Alumno,
  Foreign Key (Dni_Administrativo)  references Administrativo


  )

  go

  


  create table ficha

  (
    
	 Nro_ficha          char   (20)   not null  ,
	 Fec_ficha          date                    ,
	 Dni_Solicitante    char   (8)    not null  ,
	 Dni_Alumno         char   (8)    not null  ,

	 Primary Key (Nro_ficha) ,
	 Foreign Key (Dni_Solicitante) references Solicitante,
	 Foreign Key (Dni_Alumno) references Alumno

  )

  go

  --Insertar datos

  --DATOS SOLICITANTE----------------------------------------------------------------------------------------------
  insert Solicitante
  ( Dni_Solicitante , Nom_Solicitante , Dir_Solicitante , Ocu_Solicitante , Fono_Solicitante )
  values
  ( '45673845' , 'Roberto Vargas'		, 'JR.PACHITEA-140'			, 'Contador'	, '673418456' ),
  ( '94637485' , 'Juan Huaman'			, 'AV. LOS SAUCES #1024'	, 'Profesor'	, '276478235' ),
  ( '83657345' , 'Jose Lepoof'			, 'AV. ROSA LUZ #230'		, 'Albañil'		, '893465872' ),
  ( '94637458' , 'Ana Karenina'			, 'AV. INDUSTRIAL #103'		, 'Costurera'	, '734257823' ),
  ( '23485673' , 'Kion Chaufon'			, 'AV. PERU #487'			, 'Diseñador'	, '634578322' ),
  ( '23544325' , 'Helen Murillo'		, 'AV. ROSA LUZ #520'		, 'Profesor'	, '523354345' ),
  ( '45671454' , 'Mario Cisneros'		, 'AV. PERU #627'			, 'Diseñador'	, '345763224' ),
  ( '46219789' , 'Carlos Palomino'		, 'Av. Buenos Aires 123'	, 'Profesor'	, '673418456' ),
  ( '43597526' , 'Juan Chama'			, 'AV. San Juan 983'		, 'Profesor'	, '276478235' ),
  ( '56824011' , 'Jose Quijano'			, 'AV. Jupiter 453'			, 'Albañil'		, '893465872' ),
  ( '32001289' , 'Lesli Panduro'		, 'Jr Namekusei 666'		, 'Enfermera'	, '734257823' ),
  ( '96300258' , 'Steven Cheje'			, 'Ca Los Heraldos 101'		, 'Programador' , '634578322' ),
  ( '46879856' , 'Rosa Melano'			, 'Av. Ancient 236'			, 'Doctor'		, '987966543' ),
  ( '78596486' , 'Masha Mendoza'		, 'Av. Navi is Back 999'	, 'Abogada'		, '569879946' ),
  ( '86579613' , 'Anggie Bruno'			, 'Av Los Olvidados 678'	,'Modelo'		, '989796543'),
  ( '98796354' , 'Luis Herrera'			, 'Av Celestial 231'		,'Profesor'		, '265468112'),
  ( '45768546' , 'Robin Cuevaloca'		, 'Av El Guardian 101'		,'Ingeniero'	, '989796654'),
  ( '13556845' , 'Rudy Esteban'			, 'Av Santos 240'			,'Doctor'		, '954336543'),
  ( '32201965' , 'Andres Paz'			, 'Jr. Los caninos 897'		,'Policia'		, '989796106'),
  ( '03548699' , 'Roberto Flores'		, 'Jr. Arconte 098'			,'Mozo'			, '989731569'),
  ( '23654998' , 'Luis Fabian'			, 'Av Proceres 302'			,'Veterinario'	, '989656543'),
  ( '46987965' , 'Andrea Gutierrez'		, 'Av maniaticos 876'		,'Comerciante'	, '981396543'),
  ( '05289987' , 'Maricela Alarcon'		, 'Av Casi cielo 234'		,'Profesor'		, '989792643'),
  ( '46562984' , 'Jorge Huaman Herrera'	, 'Av Los incas 232'		,'Doctor'		, '954673165'),
  ( '35648953' , 'Gerardo Malapena'		, 'Av Los Pitucos 021'		,'Ingeniero'	, '989465798'),
  ( '16208408' , 'Fabian Guadalupe'		, 'Psj El timon 213'		,'Profesor'		, '989791320'),
  ( '46201688' , 'Clara Veramendi'		, 'Av DisneyLand 666'		,'Enfermera'	, '989794698'),
  ( '03528689' , 'Kristel Benitez'		, 'Av Washinton 333'		,'Actriz'		, '989745691'),
  ( '46897643' , 'Patricia Hermosa'		, 'Jr El alamo 777'			,'Abogada'		, '984652543'),
  ( '46873524' , 'Jackeline Claudio'	, 'Av Informales 205'	,'Comerciante'		, '989123025')
  go

  


  insert Administrativo
  ( Dni_Administrativo , Nom_Administrativo )
  values
  ( '34637456' , 'Josue' ),
  ( '32524734' , 'Camila' ),
  ( '45623542' , 'Estefany' ),
  ( '93456723' , 'Andres' ),
  ( '34672125' , 'Jose' ),
  ( '49845628' , 'Lole' ),
  ( '56465178' , 'Gean' ),
  ( '34635648' , 'Josue' ),
  ( '02220135' , 'Lucia' ),
  ( '12566466' , 'Patricia' ),
  ( '66408055' , 'Johan' ),
  ( '46849022' , 'Limbert' ),
  ( '16549865' , 'Lizeth' ),
  ( '09598986' , 'Juan' ),
  ( '13546879' , 'Alberto' ),
  ( '06546898' , 'Hiraida' ),
  ( '49879873' , 'Hilary' ),
  ( '25689844' , 'Jesica' ),
  ( '13568488' , 'Richard' ),
  ( '49845626' , 'Johan' ),
  ( '03599898' , 'Hans' )
  go

 insert Concepto
 ( Cod_Concepto , Desc_Concepto )
 values
 ('30001','Pago Psicologia'),
 ('30002','Pago Matricula'),
 ('30003','Pago Utiles'),
 ('30004','Pago Pension'),
 ('30005','Pago Mora')
 go


insert Alumno
( Dni_Alumno , Nom_Alumno , Ape_Alumno , Ed_ALumno , Dir_Alumno , Nac_Alumno , Gra_Alumno , Sec_Alumno)
values
( '73256451' , 'Julio'		, 'Castillon Lopez'		, '11' , 'AV. LOS SAUCES #124' , '08/11/2007' , '4' , 'A'),
( '78234523' , 'Romeo'		, 'Yen Ortega'			, '12' , 'AV. PERU #127'       , '09/10/2006' , '4' , 'C'),
( '76234523' , 'Julia'		, 'Quispe Sotil'		, '9'  , 'AV. ROSA LUZ #30'    , '10/09/2009' , '3' , 'B'),
( '92362534' , 'Jose'		, 'Lopez Guerrero'		, '12' , 'AV. INDUSTRIAL #3'   , '10/08/2007' , '2' , 'A'),
( '84356244' , 'Angel'		, 'Camargo Cubillas'	, '13' , 'JR.PACHITEA-10'      , '01/07/2003' , '1' , 'C'),
( '72546532' , 'Josue'		, 'Orbegozo Neruda'		, '10' , 'AV. PERU #125'       , '20/06/2008' , '3' , 'B'),
( '83654234' , 'Martin'		, 'Millones Terrones'	, '11' , 'JR.PACHITEA-40'      , '15/05/2007' , '2' , 'C'),
( '71566487' , 'Danuska'	, 'Riquelme Palmares'	, '11' , 'AV. LOS SAUCES #124' , '11/12/2007' , '4' , 'A'),
( '84568765' , 'Frank'		, 'Mendoza Zevallos'    , '12' , 'AV. PERU #127'       , '02/02/2006' , '5' , 'B'),
( '89568433' , 'Henry'		, 'Quispe Olortegui'    , '9'  , 'AV. ROSA LUZ #30'    , '14/03/2009' , '3' , 'B'),
( '77589984' , 'Jose'		, 'Zapata Noa'			, '12' , 'AV. INDUSTRIAL #3'   , '18/11/2007' , '2' , 'A'),
( '71654897' , 'Ricardo'	, 'Camargo Fabian'		, '13' , 'JR.PACHITEA-10'      , '02/03/2003' , '1' , 'C'),
( '79654898' , 'Jossy'		, 'Heraldo Orbegozo'	, '10' , 'AV. PERU #125'       , '28/05/2008' , '3' , 'B'),
( '81084984' , 'Luis'		, 'Morales Ibarra'		, '11' , 'JR.PACHITEA-40'      , '17/06/2007' , '2' , 'A'),
( '80684882' , 'Norma'		, 'Pezua Napan'			, '11' , 'AV. LOS SAUCES #124' , '24/10/2007' , '4' , 'A'),
( '86351568' , 'Julio'		, 'Quispe Galindo'      , '12' , 'AV. PERU #127'       , '30/01/2006' , '2' , 'C'),
( '75489778' , 'Yulisa'		, 'Lindo Sanchez'		, '9'  , 'AV. ROSA LUZ #30'    , '11/02/2009' , '3' , 'B'),
( '79546888' , 'Jose'		, 'Espinoza Lima'		, '12' , 'AV. INDUSTRIAL #3'   , '16/05/2007' , '2' , 'A'),
( '72654868' , 'Ricardo'	, 'Moran Camargo'		, '13' , 'JR.PACHITEA-10'      , '21/07/2003' , '1' , 'C'),
( '88884641' , 'Evelin'		, 'Cabrejos Penni'		, '10' , 'AV. PERU #125'       , '25/11/2008' , '3' , 'B'),
( '76849848' , 'Luciana'	, 'Mondragon Sucre'		, '11' , 'JR.PACHITEA-40'      , '12/04/2007' , '2' , 'A'),
( '86481311' , 'Sebastian'	, 'Cartagena Lopez'		, '11' , 'AV. LOS SAUCES #124' , '02/12/2007' , '4' , 'A'),
( '54984855' , 'Carol'		, 'Gutierrez Benites'   , '12' , 'AV. PERU #127'       , '26/11/2006' , '4' , 'B'),
( '54684688' , 'Julian'		, 'Luque Dominguez'		, '9'  , 'AV. ROSA LUZ #30'    , '29/05/2009' , '3' , 'B'),
( '78966546' , 'Joselyn'	, 'Anaquino Hurtado'    , '12' , 'AV. INDUSTRIAL #3'   , '09/03/2007' , '2' , 'A'),
( '79886844' , 'Angelo'		, 'Camano Sinfin'		, '13' , 'JR.PACHITEA-10'      , '05/04/2003' , '1' , 'C'),
( '78468442' , 'MIguel'		, 'Tamariz Sanchez'		, '10' , 'AV. PERU #125'       , '22/06/2008' , '5' , 'B'),
( '82684864' , 'Anderson'	, 'Santos Millones'		, '11' , 'JR.PACHITEA-40'      , '30/05/2007' , '2' , 'A')
go



insert Detalle_Boleta
( Nro_Boleta , Cod_Concepto , Cant_Concepto , Pre_Uni_Concepto)
values
( '001' , '30001' , '1' , '20.00' ),
( '002' , '30001' , '1' , '20.00' ),
( '003' , '30003' , '1' , '50.00' ),
( '004' , '30002' , '1' , '50.00' ),
( '005' , '30001' , '1' , '20.00' ),
( '006' , '30002' , '1' , '50.00' ),
( '007' , '30003' , '1' , '50.00' ),
( '008' , '30001' , '1' , '20.00' ),
( '009' , '30001' , '1' , '20.00' ),
( '010' , '30003' , '1' , '50.00' ),
( '011' , '30002' , '1' , '50.00' ),
( '012' , '30001' , '1' , '20.00' ),
( '013' , '30002' , '1' , '50.00' ),
( '014' , '30003' , '1' , '50.00' ),
( '015' , '30001' , '1' , '20.00' ),
( '016' , '30001' , '1' , '20.00' ),
( '017' , '30003' , '1' , '50.00' ),
( '018' , '30002' , '1' , '50.00' ),
( '019' , '30001' , '1' , '20.00' ),
( '020' , '30002' , '1' , '50.00' ),
( '021' , '30003' , '1' , '50.00' ),
( '022' , '30001' , '1' , '20.00' ),
( '023' , '30001' , '1' , '20.00' ),
( '024' , '30003' , '1' , '50.00' ),
( '025' , '30002' , '1' , '50.00' ),
( '026' , '30001' , '1' , '20.00' ),
( '027' , '30002' , '1' , '50.00' ),
( '028' , '30003' , '1' , '50.00' ),
( '029' , '30001' , '1' , '20.00' ),
( '030' , '30001' , '1' , '20.00' ),
( '031' , '30003' , '1' , '50.00' ),
( '032' , '30002' , '1' , '50.00' ),
( '033' , '30001' , '1' , '20.00' ),
( '034' , '30002' , '1' , '50.00' ),
( '035' , '30003' , '1' , '50.00' )
go

insert Boleta
( Nro_Boleta , Fec_Boleta , Dni_Solicitante , Nom_Solicitante , Dni_Administrativo , Nom_Administrativo )
values
( '001' , '25/11/2018' , '45673845' , 'Roberto' , '34637456' , 'Josue'),
( '002' , '24/11/2018' , '94637485' , 'Juan'    , '32524734' , 'Camila'),
( '003' , '23/11/2018' , '83657345' , 'Jose'    , '45623542' , 'Estefany'),
( '004' , '22/11/2018' , '94637458' , 'Ana'     , '93456723' , 'Andres'),
( '005' , '21/11/2018' , '23485673' , 'Kion'    , '34672125' , 'Jose'),
( '006' , '20/11/2018' , '23544325' , 'Helen'   , '49845628' , 'Loles'),
( '007' , '19/11/2018' , '45671454' , 'Mario'   , '56465178' , 'Gean')
go




insert ficha
( Nro_ficha , Fec_ficha , Dni_Solicitante , Dni_Alumno )
values
( '1' , '24/11/2018' , '45673845' , '73256451' ),
( '2' , '23/11/2018' , '94637485' , '78234523' ),
( '3' , '22/11/2018' , '83657345' , '76234523' ),
( '4' , '21/11/2018' , '94637458' , '92362534' ),
( '5' , '20/11/2018' , '23485673' , '84356244' ),
( '6' , '19/11/2018' , '23544325' , '72546532' ),
( '7' , '18/11/2018' , '45671454' , '83654234' )
go

insert Matricula
( Nro_Matricula , Fec_Boleta , Dni_Solicitante , Dni_Alumno , Dni_Administrativo )
values
( '01' , '26/11/2018' , '45673845' , '73256451' , '34637456'),
( '02' , '25/11/2018' , '94637485' , '78234523' , '32524734'),
( '03' , '24/11/2018' , '83657345' , '76234523' , '45623542'),
( '04' , '23/11/2018' , '94637458' , '92362534' , '93456723'),
( '05' , '22/11/2018' , '23485673' , '84356244' , '34672125'),
( '06' , '21/11/2018' , '23544325' , '72546532' , '49845628'),
( '07' , '20/11/2018' , '45671454' , '83654234' , '56465178')
go



create or alter procedure uspMatricula
@p_Nro varchar(20)
as
begin
  
  if exists(select
       Nro_Matricula,
	   Fec_Boleta,
	   Dni_Solicitante,
	   Dni_Alumno
    from Matricula where Nro_Matricula=@p_Nro)
  select
       Nro_Matricula,
	   Fec_Boleta,
	   Dni_Solicitante,
	   Dni_Alumno
    from Matricula where Nro_Matricula=@p_Nro
   
   else
   print 'Numero de matricula NO EXISTE'

end
go
 
 create or alter procedure uspFicha
 @p_Nro varchar(10)

 as
 begin
   
   if exists ( select*from ficha where Nro_ficha=@p_Nro)
  select*from ficha where Nro_ficha=@p_Nro
  
  else
  print 'No existe Ficha'

 end
 go

 create or alter procedure uspBoleta
 @p_Nro varchar(20),
 @p_Fecha date
 as
 begin
    
	select*from Boleta where Nro_Boleta=@p_Nro and Fec_Boleta=@p_Fecha

 end
 go

 create or alter procedure uspAlumno 
 
 @p_Nombre varchar(20)

 as
 begin
     if exists ( select*from Alumno where Nom_Alumno=@p_Nombre)
	 select*from Alumno where Nom_Alumno=@p_Nombre

	 else
	 print 'No existe Nombre del alumno'
 end
 go


---------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------


--Mostrar tablas

select
  Dni_Solicitante 'DNI  del Solicitante',
  Nom_Solicitante 'Nombre del Solicitante',
  Dir_Solicitante 'Direccion del Solicitante',
  Ocu_Solicitante 'Ocupacion del Solicitante',
  Fono_Solicitante 'Celular del Solicitante'
      from Solicitante go

select
  Dni_Alumno 'DNI del Alumno',
  Nom_Alumno 'Nombre del Alumno',
  Ape_Alumno 'Apellido del Alumno',
  Ed_ALumno 'Edad del Alumno',
  Dir_Alumno 'Direccion del Alumno',
  Nac_Alumno 'Nacimeinto del Alumno',
  Gra_Alumno 'Grado del Alumno',
  Sec_Alumno 'Seccion el Alumno'
     from Alumno go

select 
Dni_Administrativo 'DNI del Administrativo',
Nom_Administrativo 'Nombre del Administrativo'
from Administrativo go

select  
   Nro_Matricula 'Numero de Matricula',
   Fec_Boleta  'Fecha de la Matricula',
   Dni_Solicitante 'DNI del Solicitante',
   Dni_Alumno  'Dni del Alumno',
   Dni_Administrativo 'Dni del administrativo'
from Matricula go

select
Nro_ficha 'Numero de ficha',
Fec_ficha 'Fecha de ficha',
Dni_Solicitante 'Dni del solicitante',
Dni_Alumno 'Dni del alumno'
from ficha go

select
Nro_Boleta 'Numero de boleta',
Fec_Boleta 'Fecha de Boleta',
Dni_Solicitante 'Dni del solicitante',
Nom_Solicitante 'Nombre del solicitante',
Dni_Administrativo 'dni del administrativo',
Nom_Administrativo 'nombre del adiministrativo'
from Boleta go

select
Cod_Concepto 'Codigo de Concepto ',
Desc_Concepto 'Pagos'
from Concepto go

select
Nro_Boleta 'Numero de boleta',
Cod_Concepto 'Codigo de concepto',
Cant_Concepto 'Cantidad de concepto',
Pre_Uni_Concepto 'Precio'
from Detalle_Boleta go

--Ficha por nombre del solicitante , alumno  y   dia ficha
select*from ficha
go
select 
       Nro_ficha   'Numero de Ficha',
	   day(Fec_ficha) 'Dia de la ficha',
       S.Nom_Solicitante 'Nombre del Solicitante',
       A.Nom_Alumno  'Nombre del alumno'
	 
      from ficha F join Solicitante S
	  on F.Dni_Solicitante=S.Dni_Solicitante join Alumno A
	  on F.Dni_Alumno=A.Dni_Alumno
	  go

--Matricula por  mes de matricula ocupacion del solicitante , apellido del alumno , nombre del administrativo
select*from Matricula
go
select
    Nro_Matricula 'Nro Matricula',
    MONTH(Fec_Boleta) 'Mes de matricula',
    S.Ocu_Solicitante 'Ocupacion del Solicitante',
    A.Ape_Alumno 'Apellido del Alumno',
    AD.Nom_Administrativo 'Nombre de Administrativo'
 
 from Matricula M join Solicitante S
   on M.Dni_Solicitante=S.Dni_Solicitante join Alumno A
   on M.Dni_Alumno=A.Dni_Alumno  join Administrativo AD
   ON M.Dni_Administrativo=AD.Dni_Administrativo
go


--Observar datos por Numero de Ficha y Matricula
--Fichas existentes 1,2,3,4,5,6,7
exec  uspFicha '1'
go
--Matriculas existentes 01,02,03,04,05,06,07
exec uspMatricula '07'
go

--Observar datos con 2 parametros en boleta
select*from Boleta
go
exec uspBoleta '001', '2018/11/25'
go

--Observar datos de alumno mediande el nombre
select*from Alumno
exec uspAlumno  'Josue'
go


---------------------------------------------------------------------------------------------------------------------
--Creacion de vistas

--REPORTE GENERAL DE ALUMNOS 

CREATE VIEW LISTADO_ALUMNOS
AS
SELECT Al.Dni_Alumno AS 'DNI de estudiante',
	   Al.Ape_Alumno + ' ' + Al.Nom_Alumno AS Estudiante,
	   Al.Gra_Alumno AS Grado,
	   Al.Sec_Alumno AS 'Tipo de matrícula'
      
FROM Alumno AS Al
JOIN Matricula AS M
ON Al.Dni_Alumno=M.Dni_Alumno
          
GO