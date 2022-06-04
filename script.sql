--------------------------------------------------------
-- Archivo creado  - s�bado-junio-04-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table INICIO_CATEGORIA
--------------------------------------------------------

  CREATE TABLE "HSC"."INICIO_CATEGORIA" 
   (	"IDCATEGORIA" NUMBER(11,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"NOMBRECAT" NVARCHAR2(30)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table INICIO_COMUNA
--------------------------------------------------------

  CREATE TABLE "HSC"."INICIO_COMUNA" 
   (	"IDCOMUNA" NUMBER(11,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"NOMBRECOM" NVARCHAR2(40)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table INICIO_DETALLE
--------------------------------------------------------

  CREATE TABLE "HSC"."INICIO_DETALLE" 
   (	"IDDETALLE" NUMBER(11,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"CANTIDAD" NUMBER(11,0), 
	"SUBTOTAL" NUMBER(11,0), 
	"PRODUCTO_ID" NUMBER(11,0), 
	"VENTA_ID" NUMBER(11,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table INICIO_DIRECCION
--------------------------------------------------------

  CREATE TABLE "HSC"."INICIO_DIRECCION" 
   (	"IDDIRECCION" NUMBER(11,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"DESCRIPCIONDIR" NCLOB, 
	"REGION_ID" NUMBER(11,0), 
	"USUARIO_ID" NVARCHAR2(15)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("DESCRIPCIONDIR") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table INICIO_MARCA
--------------------------------------------------------

  CREATE TABLE "HSC"."INICIO_MARCA" 
   (	"IDMARCA" NUMBER(11,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"NOMBREMARCA" NVARCHAR2(30)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table INICIO_PRODUCTO
--------------------------------------------------------

  CREATE TABLE "HSC"."INICIO_PRODUCTO" 
   (	"IDPRODUCTO" NUMBER(11,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"NOMBREPRODUCTO" NVARCHAR2(50), 
	"PRECIOPRODUCTO" NUMBER(11,0), 
	"ESPECIFICACIONPROD" NVARCHAR2(900), 
	"STOCKPROD" NUMBER(11,0), 
	"IMAGENPROD" NVARCHAR2(100), 
	"MARCA_ID" NUMBER(11,0), 
	"TIPOPROD_ID" NUMBER(11,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table INICIO_REGION
--------------------------------------------------------

  CREATE TABLE "HSC"."INICIO_REGION" 
   (	"IDREGION" NUMBER(11,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"NOMBREREG" NVARCHAR2(40), 
	"COMUNA_ID" NUMBER(11,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table INICIO_TIPOPROD
--------------------------------------------------------

  CREATE TABLE "HSC"."INICIO_TIPOPROD" 
   (	"IDTIPOROD" NUMBER(11,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"NOMBRETIPOPROD" NVARCHAR2(60)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table INICIO_TIPOUSUARIO
--------------------------------------------------------

  CREATE TABLE "HSC"."INICIO_TIPOUSUARIO" 
   (	"IDTIPOUSUARIO" NUMBER(11,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"NOMBRETIPO" NVARCHAR2(30)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table INICIO_USUARIO
--------------------------------------------------------

  CREATE TABLE "HSC"."INICIO_USUARIO" 
   (	"USERNAME" NVARCHAR2(15), 
	"CONTRASENNIA" NVARCHAR2(30), 
	"NOMBRE" NVARCHAR2(60), 
	"APELLIDO" NVARCHAR2(60), 
	"EMAIL" NVARCHAR2(150), 
	"TIPOUSUARIO_ID" NUMBER(11,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table INICIO_VENTA
--------------------------------------------------------

  CREATE TABLE "HSC"."INICIO_VENTA" 
   (	"IDVENTA" NUMBER(11,0) GENERATED BY DEFAULT ON NULL AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"FECHAVENTA" DATE, 
	"USUARIO_ID" NVARCHAR2(15)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
REM INSERTING into HSC.INICIO_CATEGORIA
SET DEFINE OFF;
REM INSERTING into HSC.INICIO_COMUNA
SET DEFINE OFF;
Insert into HSC.INICIO_COMUNA (IDCOMUNA,NOMBRECOM) values (1,'Santiago');
REM INSERTING into HSC.INICIO_DETALLE
SET DEFINE OFF;
REM INSERTING into HSC.INICIO_DIRECCION
SET DEFINE OFF;
Insert into HSC.INICIO_DIRECCION (IDDIRECCION,REGION_ID,USUARIO_ID) values (1,1,'salas_si');
REM INSERTING into HSC.INICIO_MARCA
SET DEFINE OFF;
Insert into HSC.INICIO_MARCA (IDMARCA,NOMBREMARCA) values (43,'SteelSeries');
Insert into HSC.INICIO_MARCA (IDMARCA,NOMBREMARCA) values (5,'Asus');
Insert into HSC.INICIO_MARCA (IDMARCA,NOMBREMARCA) values (1,'Razer');
Insert into HSC.INICIO_MARCA (IDMARCA,NOMBREMARCA) values (2,'HyperX');
Insert into HSC.INICIO_MARCA (IDMARCA,NOMBREMARCA) values (3,'Fifine');
Insert into HSC.INICIO_MARCA (IDMARCA,NOMBREMARCA) values (4,'Blue Yeti');
Insert into HSC.INICIO_MARCA (IDMARCA,NOMBREMARCA) values (21,'Redragon');
Insert into HSC.INICIO_MARCA (IDMARCA,NOMBREMARCA) values (22,'Cougar');
Insert into HSC.INICIO_MARCA (IDMARCA,NOMBREMARCA) values (41,'Logitech');
Insert into HSC.INICIO_MARCA (IDMARCA,NOMBREMARCA) values (42,'corsair');
Insert into HSC.INICIO_MARCA (IDMARCA,NOMBREMARCA) values (44,'Asus');
Insert into HSC.INICIO_MARCA (IDMARCA,NOMBREMARCA) values (61,'Zotac');
Insert into HSC.INICIO_MARCA (IDMARCA,NOMBREMARCA) values (62,'Msi');
Insert into HSC.INICIO_MARCA (IDMARCA,NOMBREMARCA) values (63,'Aorus');
Insert into HSC.INICIO_MARCA (IDMARCA,NOMBREMARCA) values (64,'EVGA');
Insert into HSC.INICIO_MARCA (IDMARCA,NOMBREMARCA) values (65,'Intel');
Insert into HSC.INICIO_MARCA (IDMARCA,NOMBREMARCA) values (66,'AMD');
REM INSERTING into HSC.INICIO_PRODUCTO
SET DEFINE OFF;
Insert into HSC.INICIO_PRODUCTO (IDPRODUCTO,NOMBREPRODUCTO,PRECIOPRODUCTO,ESPECIFICACIONPROD,STOCKPROD,IMAGENPROD,MARCA_ID,TIPOPROD_ID) values (122,'Logitech G503 KDA',45990,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis quia deserunt corporis accusamus impedit doloremque ipsam modi itaque nemo neque commodi in aliquam perferendis, labore quos expedita architecto error perspiciatis!',10,'productos/kda.png',41,5);
Insert into HSC.INICIO_PRODUCTO (IDPRODUCTO,NOMBREPRODUCTO,PRECIOPRODUCTO,ESPECIFICACIONPROD,STOCKPROD,IMAGENPROD,MARCA_ID,TIPOPROD_ID) values (64,'Hyperx allow fps',9900,'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nobis, tempora praesentium consequatur cum porro quas numquam modi ex vel quo, quasi consequuntur deleniti voluptate architecto, repellendus nam deserunt. Explicabo, quo?',12,'productos/alloy_fps.png',2,2);
Insert into HSC.INICIO_PRODUCTO (IDPRODUCTO,NOMBREPRODUCTO,PRECIOPRODUCTO,ESPECIFICACIONPROD,STOCKPROD,IMAGENPROD,MARCA_ID,TIPOPROD_ID) values (1,'Razer Seriren Mini',47990,'Con el micr?fono Razer descubrir?s una nueva forma de captar y emitir audios                 Fiel reflejo de la realidad, ideal para varias actividadesz, te brindar? un sonido de calidad y conseguir?s la nitidez de las voces.',10,'productos/seireni.jpg',1,1);
Insert into HSC.INICIO_PRODUCTO (IDPRODUCTO,NOMBREPRODUCTO,PRECIOPRODUCTO,ESPECIFICACIONPROD,STOCKPROD,IMAGENPROD,MARCA_ID,TIPOPROD_ID) values (3,'Fifine K669B',37990,'Con el micr?fono Fifine descubrir?s una nueva forma de captar y emitir audios.                 Fiel reflejo de la realidad                 Ideal para varias actividades. Te brindar? un sonido de calidad y conseguir?s la nitidez de las voces.',10,'productos/fifain.jpg',3,1);
Insert into HSC.INICIO_PRODUCTO (IDPRODUCTO,NOMBREPRODUCTO,PRECIOPRODUCTO,ESPECIFICACIONPROD,STOCKPROD,IMAGENPROD,MARCA_ID,TIPOPROD_ID) values (4,'Hyper X Solocast',49990,'Con el micr?fono HyperX descubrir?s una nueva forma de captar y emitir audios.                 Fiel reflejo de la realidad                 Ideal para varias actividades. Te brindar? un sonido de calidad y conseguir?s la nitidez de las voces.',10,'productos/soloqi.jpg',2,1);
Insert into HSC.INICIO_PRODUCTO (IDPRODUCTO,NOMBREPRODUCTO,PRECIOPRODUCTO,ESPECIFICACIONPROD,STOCKPROD,IMAGENPROD,MARCA_ID,TIPOPROD_ID) values (5,'Blue Yeti Snowball',35990,'La comunicaci?n clara y poderosa es importante para todas las organizaciones. Los micr?fonos de Blue te                 permiten capturar y transmitir con una calidad de sonido sorprendente. Blue combina audio de calidad                 profesional con la simplicidad plug-and-play para ofrecer un rendimiento que est? a a?os luz de los                 micr?fonos integrados para port?tiles y c?maras.',10,'productos/snowball.png',4,1);
Insert into HSC.INICIO_PRODUCTO (IDPRODUCTO,NOMBREPRODUCTO,PRECIOPRODUCTO,ESPECIFICACIONPROD,STOCKPROD,IMAGENPROD,MARCA_ID,TIPOPROD_ID) values (121,'Cougar MinosXT',34990,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis quia deserunt corporis accusamus impedit doloremque ipsam modi itaque nemo neque commodi in aliquam perferendis, labore quos expedita architecto error perspiciatis!',10,'productos/cougar_minosxt.png',22,5);
Insert into HSC.INICIO_PRODUCTO (IDPRODUCTO,NOMBREPRODUCTO,PRECIOPRODUCTO,ESPECIFICACIONPROD,STOCKPROD,IMAGENPROD,MARCA_ID,TIPOPROD_ID) values (101,'Razer BlackWidow',57990,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis quia deserunt corporis accusamus impedit doloremque ipsam modi itaque nemo neque commodi in aliquam perferendis, labore quos expedita architecto error perspiciatis!',10,'productos/black_widow.png',1,2);
Insert into HSC.INICIO_PRODUCTO (IDPRODUCTO,NOMBREPRODUCTO,PRECIOPRODUCTO,ESPECIFICACIONPROD,STOCKPROD,IMAGENPROD,MARCA_ID,TIPOPROD_ID) values (123,'Rog Gladuis PInk',45990,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis quia deserunt corporis accusamus impedit doloremque ipsam modi itaque nemo neque commodi in aliquam perferendis, labore quos expedita architecto error perspiciatis!',9,'productos/rog_gladius_LpZmwlV.png',44,5);
Insert into HSC.INICIO_PRODUCTO (IDPRODUCTO,NOMBREPRODUCTO,PRECIOPRODUCTO,ESPECIFICACIONPROD,STOCKPROD,IMAGENPROD,MARCA_ID,TIPOPROD_ID) values (102,'Redragon Kumara k552',45990,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis quia deserunt corporis accusamus impedit doloremque ipsam modi itaque nemo neque commodi in aliquam perferendis, labore quos expedita architecto error perspiciatis!',7,'productos/k552_GqlmgaR.png',21,2);
Insert into HSC.INICIO_PRODUCTO (IDPRODUCTO,NOMBREPRODUCTO,PRECIOPRODUCTO,ESPECIFICACIONPROD,STOCKPROD,IMAGENPROD,MARCA_ID,TIPOPROD_ID) values (141,'Aorus RTX 3090',2999990,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis quia deserunt corporis accusamus impedit doloremque ipsam modi itaque nemo neque commodi in aliquam perferendis, labore quos expedita architecto error perspiciatis!',2,'productos/3090_Jdxyrj7.png',63,3);
Insert into HSC.INICIO_PRODUCTO (IDPRODUCTO,NOMBREPRODUCTO,PRECIOPRODUCTO,ESPECIFICACIONPROD,STOCKPROD,IMAGENPROD,MARCA_ID,TIPOPROD_ID) values (142,'EVGA 2080TI',1499990,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis quia deserunt corporis accusamus impedit doloremque ipsam modi itaque nemo neque commodi in aliquam perferendis, labore quos expedita architecto error perspiciatis!',4,'productos/2080_evga.png',64,3);
Insert into HSC.INICIO_PRODUCTO (IDPRODUCTO,NOMBREPRODUCTO,PRECIOPRODUCTO,ESPECIFICACIONPROD,STOCKPROD,IMAGENPROD,MARCA_ID,TIPOPROD_ID) values (143,'Zotac  GTX1650',359990,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis quia deserunt corporis accusamus impedit doloremque ipsam modi itaque nemo neque commodi in aliquam perferendis, labore quos expedita architecto error perspiciatis!',9,'productos/1650zotac.png',61,3);
Insert into HSC.INICIO_PRODUCTO (IDPRODUCTO,NOMBREPRODUCTO,PRECIOPRODUCTO,ESPECIFICACIONPROD,STOCKPROD,IMAGENPROD,MARCA_ID,TIPOPROD_ID) values (161,'Intel i7-12600k',699990,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis quia deserunt corporis accusamus impedit doloremque ipsam modi itaque nemo neque commodi in aliquam perferendis, labore quos expedita architecto error perspiciatis!',3,'productos/i7_12i.png',65,6);
Insert into HSC.INICIO_PRODUCTO (IDPRODUCTO,NOMBREPRODUCTO,PRECIOPRODUCTO,ESPECIFICACIONPROD,STOCKPROD,IMAGENPROD,MARCA_ID,TIPOPROD_ID) values (162,'AMD Ryzen 7 5800x',497990,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis quia deserunt corporis accusamus impedit doloremque ipsam modi itaque nemo neque commodi in aliquam perferendis, labore quos expedita architecto error perspiciatis!',3,'productos/ryzen_7i.png',66,6);
Insert into HSC.INICIO_PRODUCTO (IDPRODUCTO,NOMBREPRODUCTO,PRECIOPRODUCTO,ESPECIFICACIONPROD,STOCKPROD,IMAGENPROD,MARCA_ID,TIPOPROD_ID) values (163,'Intel i5-10400',290990,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis quia deserunt corporis accusamus impedit doloremque ipsam modi itaque nemo neque commodi in aliquam perferendis, labore quos expedita architecto error perspiciatis!',4,'productos/intel_i5.png',65,6);
Insert into HSC.INICIO_PRODUCTO (IDPRODUCTO,NOMBREPRODUCTO,PRECIOPRODUCTO,ESPECIFICACIONPROD,STOCKPROD,IMAGENPROD,MARCA_ID,TIPOPROD_ID) values (164,'HyperX Fury DDR4 8GB',45990,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis quia deserunt corporis accusamus impedit doloremque ipsam modi itaque nemo neque commodi in aliquam perferendis, labore quos expedita architecto error perspiciatis!',5,'productos/jaiperxxxxx.png',2,4);
Insert into HSC.INICIO_PRODUCTO (IDPRODUCTO,NOMBREPRODUCTO,PRECIOPRODUCTO,ESPECIFICACIONPROD,STOCKPROD,IMAGENPROD,MARCA_ID,TIPOPROD_ID) values (165,'HyperX Fury DDR4 16GB RGB',140990,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis quia deserunt corporis accusamus impedit doloremque ipsam modi itaque nemo neque commodi in aliquam perferendis, labore quos expedita architecto error perspiciatis!',6,'productos/rams_hyperx.png',2,4);
Insert into HSC.INICIO_PRODUCTO (IDPRODUCTO,NOMBREPRODUCTO,PRECIOPRODUCTO,ESPECIFICACIONPROD,STOCKPROD,IMAGENPROD,MARCA_ID,TIPOPROD_ID) values (166,'AORUS RGB GP DDR4 16GB',28900,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis quia deserunt corporis accusamus impedit doloremque ipsam modi itaque nemo neque commodi in aliquam perferendis, labore quos expedita architecto error perspiciatis!',2,'productos/rams_aorus.png',63,4);
REM INSERTING into HSC.INICIO_REGION
SET DEFINE OFF;
Insert into HSC.INICIO_REGION (IDREGION,NOMBREREG,COMUNA_ID) values (1,'Metropolitana',1);
REM INSERTING into HSC.INICIO_TIPOPROD
SET DEFINE OFF;
Insert into HSC.INICIO_TIPOPROD (IDTIPOROD,NOMBRETIPOPROD) values (1,'Microfono');
Insert into HSC.INICIO_TIPOPROD (IDTIPOROD,NOMBRETIPOPROD) values (2,'Teclado');
Insert into HSC.INICIO_TIPOPROD (IDTIPOROD,NOMBRETIPOPROD) values (3,'Grafica');
Insert into HSC.INICIO_TIPOPROD (IDTIPOROD,NOMBRETIPOPROD) values (4,'Ram');
Insert into HSC.INICIO_TIPOPROD (IDTIPOROD,NOMBRETIPOPROD) values (5,'Mouse');
Insert into HSC.INICIO_TIPOPROD (IDTIPOROD,NOMBRETIPOPROD) values (6,'Procesador');
REM INSERTING into HSC.INICIO_TIPOUSUARIO
SET DEFINE OFF;
Insert into HSC.INICIO_TIPOUSUARIO (IDTIPOUSUARIO,NOMBRETIPO) values (1,'admin');
Insert into HSC.INICIO_TIPOUSUARIO (IDTIPOUSUARIO,NOMBRETIPO) values (2,'usuario');
REM INSERTING into HSC.INICIO_USUARIO
SET DEFINE OFF;
Insert into HSC.INICIO_USUARIO (USERNAME,CONTRASENNIA,NOMBRE,APELLIDO,EMAIL,TIPOUSUARIO_ID) values ('salas_si','2222','ignacio ','Pepe','saasdasd@asdasd.com',2);
Insert into HSC.INICIO_USUARIO (USERNAME,CONTRASENNIA,NOMBRE,APELLIDO,EMAIL,TIPOUSUARIO_ID) values ('admin','admin','admin','admin','admin@admin.com',1);
REM INSERTING into HSC.INICIO_VENTA
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index SYS_C0012722
--------------------------------------------------------

  CREATE UNIQUE INDEX "HSC"."SYS_C0012722" ON "HSC"."INICIO_CATEGORIA" ("IDCATEGORIA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0012724
--------------------------------------------------------

  CREATE UNIQUE INDEX "HSC"."SYS_C0012724" ON "HSC"."INICIO_COMUNA" ("IDCOMUNA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0012757
--------------------------------------------------------

  CREATE UNIQUE INDEX "HSC"."SYS_C0012757" ON "HSC"."INICIO_DETALLE" ("IDDETALLE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index INICIO_DET_PRODUCTO_I_0023C3B4
--------------------------------------------------------

  CREATE INDEX "HSC"."INICIO_DET_PRODUCTO_I_0023C3B4" ON "HSC"."INICIO_DETALLE" ("PRODUCTO_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index INICIO_DET_VENTA_ID_50CBE654
--------------------------------------------------------

  CREATE INDEX "HSC"."INICIO_DET_VENTA_ID_50CBE654" ON "HSC"."INICIO_DETALLE" ("VENTA_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0012751
--------------------------------------------------------

  CREATE UNIQUE INDEX "HSC"."SYS_C0012751" ON "HSC"."INICIO_DIRECCION" ("IDDIRECCION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index INICIO_DIR_REGION_ID_2A8FE6B1
--------------------------------------------------------

  CREATE INDEX "HSC"."INICIO_DIR_REGION_ID_2A8FE6B1" ON "HSC"."INICIO_DIRECCION" ("REGION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index INICIO_DIR_USUARIO_ID_598A3257
--------------------------------------------------------

  CREATE INDEX "HSC"."INICIO_DIR_USUARIO_ID_598A3257" ON "HSC"."INICIO_DIRECCION" ("USUARIO_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0012726
--------------------------------------------------------

  CREATE UNIQUE INDEX "HSC"."SYS_C0012726" ON "HSC"."INICIO_MARCA" ("IDMARCA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0012745
--------------------------------------------------------

  CREATE UNIQUE INDEX "HSC"."SYS_C0012745" ON "HSC"."INICIO_PRODUCTO" ("IDPRODUCTO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index INICIO_PRO_MARCA_ID_A04BEEDA
--------------------------------------------------------

  CREATE INDEX "HSC"."INICIO_PRO_MARCA_ID_A04BEEDA" ON "HSC"."INICIO_PRODUCTO" ("MARCA_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index INICIO_PRO_TIPOPROD_I_98BB12C9
--------------------------------------------------------

  CREATE INDEX "HSC"."INICIO_PRO_TIPOPROD_I_98BB12C9" ON "HSC"."INICIO_PRODUCTO" ("TIPOPROD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0012739
--------------------------------------------------------

  CREATE UNIQUE INDEX "HSC"."SYS_C0012739" ON "HSC"."INICIO_REGION" ("IDREGION") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index INICIO_REG_COMUNA_ID_DBD35DE5
--------------------------------------------------------

  CREATE INDEX "HSC"."INICIO_REG_COMUNA_ID_DBD35DE5" ON "HSC"."INICIO_REGION" ("COMUNA_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0012728
--------------------------------------------------------

  CREATE UNIQUE INDEX "HSC"."SYS_C0012728" ON "HSC"."INICIO_TIPOPROD" ("IDTIPOROD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0012730
--------------------------------------------------------

  CREATE UNIQUE INDEX "HSC"."SYS_C0012730" ON "HSC"."INICIO_TIPOUSUARIO" ("IDTIPOUSUARIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0012733
--------------------------------------------------------

  CREATE UNIQUE INDEX "HSC"."SYS_C0012733" ON "HSC"."INICIO_USUARIO" ("USERNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index INICIO_USU_TIPOUSUARI_CC956262
--------------------------------------------------------

  CREATE INDEX "HSC"."INICIO_USU_TIPOUSUARI_CC956262" ON "HSC"."INICIO_USUARIO" ("TIPOUSUARIO_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0012737
--------------------------------------------------------

  CREATE UNIQUE INDEX "HSC"."SYS_C0012737" ON "HSC"."INICIO_VENTA" ("IDVENTA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index INICIO_VEN_USUARIO_ID_81C581B1
--------------------------------------------------------

  CREATE INDEX "HSC"."INICIO_VEN_USUARIO_ID_81C581B1" ON "HSC"."INICIO_VENTA" ("USUARIO_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table INICIO_CATEGORIA
--------------------------------------------------------

  ALTER TABLE "HSC"."INICIO_CATEGORIA" MODIFY ("IDCATEGORIA" NOT NULL ENABLE);
  ALTER TABLE "HSC"."INICIO_CATEGORIA" ADD PRIMARY KEY ("IDCATEGORIA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table INICIO_COMUNA
--------------------------------------------------------

  ALTER TABLE "HSC"."INICIO_COMUNA" MODIFY ("IDCOMUNA" NOT NULL ENABLE);
  ALTER TABLE "HSC"."INICIO_COMUNA" ADD PRIMARY KEY ("IDCOMUNA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table INICIO_DETALLE
--------------------------------------------------------

  ALTER TABLE "HSC"."INICIO_DETALLE" MODIFY ("IDDETALLE" NOT NULL ENABLE);
  ALTER TABLE "HSC"."INICIO_DETALLE" MODIFY ("CANTIDAD" NOT NULL ENABLE);
  ALTER TABLE "HSC"."INICIO_DETALLE" MODIFY ("SUBTOTAL" NOT NULL ENABLE);
  ALTER TABLE "HSC"."INICIO_DETALLE" MODIFY ("PRODUCTO_ID" NOT NULL ENABLE);
  ALTER TABLE "HSC"."INICIO_DETALLE" MODIFY ("VENTA_ID" NOT NULL ENABLE);
  ALTER TABLE "HSC"."INICIO_DETALLE" ADD PRIMARY KEY ("IDDETALLE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table INICIO_DIRECCION
--------------------------------------------------------

  ALTER TABLE "HSC"."INICIO_DIRECCION" MODIFY ("IDDIRECCION" NOT NULL ENABLE);
  ALTER TABLE "HSC"."INICIO_DIRECCION" MODIFY ("USUARIO_ID" NOT NULL ENABLE);
  ALTER TABLE "HSC"."INICIO_DIRECCION" ADD PRIMARY KEY ("IDDIRECCION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table INICIO_MARCA
--------------------------------------------------------

  ALTER TABLE "HSC"."INICIO_MARCA" MODIFY ("IDMARCA" NOT NULL ENABLE);
  ALTER TABLE "HSC"."INICIO_MARCA" ADD PRIMARY KEY ("IDMARCA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table INICIO_PRODUCTO
--------------------------------------------------------

  ALTER TABLE "HSC"."INICIO_PRODUCTO" MODIFY ("IDPRODUCTO" NOT NULL ENABLE);
  ALTER TABLE "HSC"."INICIO_PRODUCTO" MODIFY ("PRECIOPRODUCTO" NOT NULL ENABLE);
  ALTER TABLE "HSC"."INICIO_PRODUCTO" MODIFY ("STOCKPROD" NOT NULL ENABLE);
  ALTER TABLE "HSC"."INICIO_PRODUCTO" MODIFY ("MARCA_ID" NOT NULL ENABLE);
  ALTER TABLE "HSC"."INICIO_PRODUCTO" MODIFY ("TIPOPROD_ID" NOT NULL ENABLE);
  ALTER TABLE "HSC"."INICIO_PRODUCTO" ADD PRIMARY KEY ("IDPRODUCTO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table INICIO_REGION
--------------------------------------------------------

  ALTER TABLE "HSC"."INICIO_REGION" MODIFY ("IDREGION" NOT NULL ENABLE);
  ALTER TABLE "HSC"."INICIO_REGION" ADD PRIMARY KEY ("IDREGION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table INICIO_TIPOPROD
--------------------------------------------------------

  ALTER TABLE "HSC"."INICIO_TIPOPROD" MODIFY ("IDTIPOROD" NOT NULL ENABLE);
  ALTER TABLE "HSC"."INICIO_TIPOPROD" ADD PRIMARY KEY ("IDTIPOROD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table INICIO_TIPOUSUARIO
--------------------------------------------------------

  ALTER TABLE "HSC"."INICIO_TIPOUSUARIO" MODIFY ("IDTIPOUSUARIO" NOT NULL ENABLE);
  ALTER TABLE "HSC"."INICIO_TIPOUSUARIO" ADD PRIMARY KEY ("IDTIPOUSUARIO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table INICIO_USUARIO
--------------------------------------------------------

  ALTER TABLE "HSC"."INICIO_USUARIO" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "HSC"."INICIO_USUARIO" MODIFY ("TIPOUSUARIO_ID" NOT NULL ENABLE);
  ALTER TABLE "HSC"."INICIO_USUARIO" ADD PRIMARY KEY ("USERNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table INICIO_VENTA
--------------------------------------------------------

  ALTER TABLE "HSC"."INICIO_VENTA" MODIFY ("IDVENTA" NOT NULL ENABLE);
  ALTER TABLE "HSC"."INICIO_VENTA" MODIFY ("FECHAVENTA" NOT NULL ENABLE);
  ALTER TABLE "HSC"."INICIO_VENTA" MODIFY ("USUARIO_ID" NOT NULL ENABLE);
  ALTER TABLE "HSC"."INICIO_VENTA" ADD PRIMARY KEY ("IDVENTA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INICIO_DETALLE
--------------------------------------------------------

  ALTER TABLE "HSC"."INICIO_DETALLE" ADD CONSTRAINT "INICIO_DE_PRODUCTO__0023C3B4_F" FOREIGN KEY ("PRODUCTO_ID")
	  REFERENCES "HSC"."INICIO_PRODUCTO" ("IDPRODUCTO") DEFERRABLE INITIALLY DEFERRED ENABLE;
  ALTER TABLE "HSC"."INICIO_DETALLE" ADD CONSTRAINT "INICIO_DE_VENTA_ID_50CBE654_F" FOREIGN KEY ("VENTA_ID")
	  REFERENCES "HSC"."INICIO_VENTA" ("IDVENTA") DEFERRABLE INITIALLY DEFERRED ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INICIO_DIRECCION
--------------------------------------------------------

  ALTER TABLE "HSC"."INICIO_DIRECCION" ADD CONSTRAINT "INICIO_DI_REGION_ID_2A8FE6B1_F" FOREIGN KEY ("REGION_ID")
	  REFERENCES "HSC"."INICIO_REGION" ("IDREGION") DEFERRABLE INITIALLY DEFERRED ENABLE;
  ALTER TABLE "HSC"."INICIO_DIRECCION" ADD CONSTRAINT "INICIO_DI_USUARIO_I_598A3257_F" FOREIGN KEY ("USUARIO_ID")
	  REFERENCES "HSC"."INICIO_USUARIO" ("USERNAME") DEFERRABLE INITIALLY DEFERRED ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INICIO_PRODUCTO
--------------------------------------------------------

  ALTER TABLE "HSC"."INICIO_PRODUCTO" ADD CONSTRAINT "INICIO_PR_MARCA_ID_A04BEEDA_F" FOREIGN KEY ("MARCA_ID")
	  REFERENCES "HSC"."INICIO_MARCA" ("IDMARCA") DEFERRABLE INITIALLY DEFERRED ENABLE;
  ALTER TABLE "HSC"."INICIO_PRODUCTO" ADD CONSTRAINT "INICIO_PR_TIPOPROD__98BB12C9_F" FOREIGN KEY ("TIPOPROD_ID")
	  REFERENCES "HSC"."INICIO_TIPOPROD" ("IDTIPOROD") DEFERRABLE INITIALLY DEFERRED ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INICIO_REGION
--------------------------------------------------------

  ALTER TABLE "HSC"."INICIO_REGION" ADD CONSTRAINT "INICIO_RE_COMUNA_ID_DBD35DE5_F" FOREIGN KEY ("COMUNA_ID")
	  REFERENCES "HSC"."INICIO_COMUNA" ("IDCOMUNA") DEFERRABLE INITIALLY DEFERRED ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INICIO_USUARIO
--------------------------------------------------------

  ALTER TABLE "HSC"."INICIO_USUARIO" ADD CONSTRAINT "INICIO_US_TIPOUSUAR_CC956262_F" FOREIGN KEY ("TIPOUSUARIO_ID")
	  REFERENCES "HSC"."INICIO_TIPOUSUARIO" ("IDTIPOUSUARIO") DEFERRABLE INITIALLY DEFERRED ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INICIO_VENTA
--------------------------------------------------------

  ALTER TABLE "HSC"."INICIO_VENTA" ADD CONSTRAINT "INICIO_VE_USUARIO_I_81C581B1_F" FOREIGN KEY ("USUARIO_ID")
	  REFERENCES "HSC"."INICIO_USUARIO" ("USERNAME") DEFERRABLE INITIALLY DEFERRED ENABLE;
