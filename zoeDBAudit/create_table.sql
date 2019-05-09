/*==============================================================*/
/* Table: AUD_DDL_RECORD                                        */
/*==============================================================*/
CREATE TABLE ZOESECURITY.AUD_DDL_RECORD 
(
   LOG_ID               VARCHAR2(64)         NOT NULL,
   USERNAME             VARCHAR2(64),
   OS_USERNAME          VARCHAR2(128),
   HOST                 VARCHAR2(128),
   TERMINAL             VARCHAR2(128),
   IP_ADDRESS           VARCHAR2(64),
   PROGRAM              VARCHAR2(64),
   MODULE               VARCHAR2(64),
   CURRENT_USER         VARCHAR2(64),
   OBJECT_OWNER         VARCHAR2(64),
   OBJECT_NAME          VARCHAR2(64),
   OBJECT_TYPE          VARCHAR2(64),
   NEW_OBJECT_OWNER     VARCHAR2(64),
   NEW_OBJECT_NAME      VARCHAR2(64),
   OPERATION_TYPE       VARCHAR2(64),
   OPERATION_TIME       DATE,
   RETURNCODE           NUMBER,
   SQL_ID               VARCHAR2(64),
   SQL_TEXT             CLOB,
   CONSTRAINT PK_AUDIT_LOG PRIMARY KEY (LOG_ID)
);

COMMENT ON TABLE ZOESECURITY.AUD_DDL_RECORD IS
'审计DDL记录表';

COMMENT ON COLUMN ZOESECURITY.AUD_DDL_RECORD.LOG_ID IS
'日志流水号';

COMMENT ON COLUMN ZOESECURITY.AUD_DDL_RECORD.USERNAME IS
'数据库用户名';

COMMENT ON COLUMN ZOESECURITY.AUD_DDL_RECORD.OS_USERNAME IS
'操作系统用户名';

COMMENT ON COLUMN ZOESECURITY.AUD_DDL_RECORD.HOST IS
'客户端主机名';

COMMENT ON COLUMN ZOESECURITY.AUD_DDL_RECORD.TERMINAL IS
'客户端操作系统终端名';

COMMENT ON COLUMN ZOESECURITY.AUD_DDL_RECORD.IP_ADDRESS IS
'客户端IP地址';

COMMENT ON COLUMN ZOESECURITY.AUD_DDL_RECORD.PROGRAM IS
'程序名';

COMMENT ON COLUMN ZOESECURITY.AUD_DDL_RECORD.MODULE IS
'模块名';

COMMENT ON COLUMN ZOESECURITY.AUD_DDL_RECORD.CURRENT_USER IS
'当前用户#|#|当前SESSION拥有权限的用户的名称（例如：当前SESSION用户是SYS,但是正在执行system.myproc，那么current_user就是system）''';

COMMENT ON COLUMN ZOESECURITY.AUD_DDL_RECORD.OBJECT_OWNER IS
'对象所有者';

COMMENT ON COLUMN ZOESECURITY.AUD_DDL_RECORD.OBJECT_NAME IS
'对象名';

COMMENT ON COLUMN ZOESECURITY.AUD_DDL_RECORD.OBJECT_TYPE IS
'对象类型';

COMMENT ON COLUMN ZOESECURITY.AUD_DDL_RECORD.NEW_OBJECT_OWNER IS
'新对象所有者';

COMMENT ON COLUMN ZOESECURITY.AUD_DDL_RECORD.NEW_OBJECT_NAME IS
'新对象名';

COMMENT ON COLUMN ZOESECURITY.AUD_DDL_RECORD.OPERATION_TYPE IS
'操作类型';

COMMENT ON COLUMN ZOESECURITY.AUD_DDL_RECORD.OPERATION_TIME IS
'操作时间';

COMMENT ON COLUMN ZOESECURITY.AUD_DDL_RECORD.RETURNCODE IS
'返回代码';

COMMENT ON COLUMN ZOESECURITY.AUD_DDL_RECORD.SQL_ID IS
'SQL_ID';

COMMENT ON COLUMN ZOESECURITY.AUD_DDL_RECORD.SQL_TEXT IS
'SQL文本';
