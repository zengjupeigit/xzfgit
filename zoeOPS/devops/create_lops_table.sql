-- Created in 2018.06.03 by polarbears
-- Copyright (c) 20xx, CHINA and/or affiliates.
-- All rights reserved.
--	Name:
-- 		create_ops_table.sql
--	Description:
-- 		创建运维相关表
--  Relation:
--      zoeUtility
--	Notes:
--		
--	修改 - （年-月-日） - 描述
--
DROP TABLE ZOEDEVOPS.DVP_DB_ROLE_DICT;
DROP TABLE ZOEDEVOPS.DVP_DB_DEPLOY_TYPE_DICT ;
DROP TABLE ZOEDEVOPS.DVP_DB_BASIC_INFO ;
DROP TABLE ZOEDEVOPS.DVP_DB_USER_INFO;
/*==============================================================*/
/* Table: DVP_DB_ROLE_DICT                                      */
/*==============================================================*/
CREATE TABLE ZOEDEVOPS.DVP_DB_ROLE_DICT 
(
   ROLE_ID              VARCHAR2(64)         NOT NULL,
   ROLE_NAME            VARCHAR2(255),
   CREATOR_CODE         VARCHAR2(64),
   CREATED_TIME         DATE,
   MODIFIER_CODE        VARCHAR2(64),
   MODIFIED_TIME        DATE,
   CONSTRAINT PK_DVP_DB_ROLE_DICT PRIMARY KEY (ROLE_ID)
);

COMMENT ON TABLE ZOEDEVOPS.DVP_DB_ROLE_DICT IS
'数据库角色字典';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_ROLE_DICT.ROLE_ID IS
'角色ID';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_ROLE_DICT.ROLE_NAME IS
'角色名称';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_ROLE_DICT.CREATOR_CODE IS
'创建人';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_ROLE_DICT.CREATED_TIME IS
'创建时间';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_ROLE_DICT.MODIFIER_CODE IS
'修改人';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_ROLE_DICT.MODIFIED_TIME IS
'修改时间';

/*==============================================================*/
/* Table: DVP_DB_DEPLOY_TYPE_DICT                               */
/*==============================================================*/
CREATE TABLE ZOEDEVOPS.DVP_DB_DEPLOY_TYPE_DICT 
(
   TYPE_ID              VARCHAR2(64)         NOT NULL,
   TYPE_NAME            VARCHAR2(255),
   CREATOR_CODE         VARCHAR2(64),
   CREATED_TIME         DATE,
   MODIFIER_CODE        VARCHAR2(64),
   MODIFIED_TIME        DATE,
   CONSTRAINT PK_DVP_DB_DEPLOY_TYPE_DICT PRIMARY KEY (TYPE_ID)
);

COMMENT ON TABLE ZOEDEVOPS.DVP_DB_DEPLOY_TYPE_DICT IS
'数据库部署类型字典';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_DEPLOY_TYPE_DICT.TYPE_ID IS
'部署类型ID';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_DEPLOY_TYPE_DICT.TYPE_NAME IS
'部署类型名称';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_DEPLOY_TYPE_DICT.CREATOR_CODE IS
'创建人';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_DEPLOY_TYPE_DICT.CREATED_TIME IS
'创建时间';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_DEPLOY_TYPE_DICT.MODIFIER_CODE IS
'修改人';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_DEPLOY_TYPE_DICT.MODIFIED_TIME IS
'修改时间';

/*==============================================================*/
/* Table: DVP_DB_USER_INFO                                      */
/*==============================================================*/
CREATE TABLE ZOEDEVOPS.DVP_DB_USER_INFO 
(
   DB_ID#               VARCHAR2(64)         NOT NULL,
   USERNAME             VARCHAR2(64)         NOT NULL,
   USER_PASSWORD        VARCHAR2(64),
   CREATOR_CODE         VARCHAR2(64),
   CREATED_TIME         DATE,
   MODIFIER_CODE        VARCHAR2(64),
   MODIFIED_TIME        DATE,
   CONSTRAINT PK_DVP_DB_USER_INFO PRIMARY KEY (DB_ID#, USERNAME)
);

COMMENT ON TABLE ZOEDEVOPS.DVP_DB_USER_INFO IS
'数据库用户信息';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_USER_INFO.DB_ID# IS
'DB_ID';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_USER_INFO.USERNAME IS
'用户名';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_USER_INFO.USER_PASSWORD IS
'用户密码';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_USER_INFO.CREATOR_CODE IS
'创建人';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_USER_INFO.CREATED_TIME IS
'创建时间';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_USER_INFO.MODIFIER_CODE IS
'修改人';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_USER_INFO.MODIFIED_TIME IS
'修改时间';


/*==============================================================*/
/* Table: DVP_DB_BASIC_INFO                                     */
/*==============================================================*/
CREATE TABLE ZOEDEVOPS.DVP_DB_BASIC_INFO 
(
   DB_ID                VARCHAR2(64)         NOT NULL,
   DB_NAME              VARCHAR2(64),
   DB_CHN_NAME          VARCHAR2(255 CHAR),
   SERVICE_NAME         VARCHAR2(64),
   HOST_NAME            VARCHAR2(128),
   IP_ADDRESS           VARCHAR2(64),
   PORT_NO              NUMBER,
   DB_ROLE_ID#          VARCHAR2(64),
   DB_DEPLOY_TYPE_ID#   VARCHAR2(64),
   DB_CREATED_TIME      DATE,
   DB_INITIAL_VERSION   VARCHAR2(64),
   DB_PRODUCT           VARCHAR2(64),
   DB_VERSION           VARCHAR2(128),
   MEMO                 VARCHAR2(255 CHAR),
   CREATOR_CODE         VARCHAR2(64),
   CREATED_TIME         DATE,
   MODIFIER_CODE        VARCHAR2(64),
   MODIFIED_TIME        DATE,
   CONSTRAINT PK_DVP_DB_BASIC_INFO PRIMARY KEY (DB_ID)
);

COMMENT ON TABLE ZOEDEVOPS.DVP_DB_BASIC_INFO IS
'数据库基本信息';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_BASIC_INFO.DB_ID IS
'数据库ID';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_BASIC_INFO.DB_NAME IS
'数据库名';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_BASIC_INFO.DB_CHN_NAME IS
'数据库中文名';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_BASIC_INFO.SERVICE_NAME IS
'服务名';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_BASIC_INFO.HOST_NAME IS
'主机名';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_BASIC_INFO.IP_ADDRESS IS
'IP地址';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_BASIC_INFO.PORT_NO IS
'端口号';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_BASIC_INFO.DB_ROLE_ID# IS
'数据库角色ID';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_BASIC_INFO.DB_DEPLOY_TYPE_ID# IS
'数据库部署类型ID';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_BASIC_INFO.DB_CREATED_TIME IS
'数据库创建时间';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_BASIC_INFO.DB_INITIAL_VERSION IS
'数据库初始版本';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_BASIC_INFO.DB_PRODUCT IS
'数据库产品';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_BASIC_INFO.DB_VERSION IS
'数据库软件版本';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_BASIC_INFO.MEMO IS
'备注';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_BASIC_INFO.CREATOR_CODE IS
'创建人';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_BASIC_INFO.CREATED_TIME IS
'创建时间';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_BASIC_INFO.MODIFIER_CODE IS
'修改人';

COMMENT ON COLUMN ZOEDEVOPS.DVP_DB_BASIC_INFO.MODIFIED_TIME IS
'修改时间';
