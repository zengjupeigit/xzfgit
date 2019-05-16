-- Created in 2018.10.11 by polarbears
-- Copyright (c) 20xx, CHINA and/or affiliates.
-- All rights reserved.
--	Name:
-- 		alert_db_params.sql
--	Description:
-- 		基本说明
--  Relation:
--      对象关联
--	Notes:
--		基本注意事项
--	修改 - （年-月-日） - 描述
--

--检查指标
	--processes：
	--memory_target：
	--open_cursors：
	
set markup html off
--SET SERVEROUTPUT ON
DECLARE
	lv_processes  VARCHAR2(16);
	lv_process	 VARCHAR2(16);
	lv_sessions  VARCHAR2(16);
	lv_memory_target VARCHAR2(16);
	lv_max_memory_target VARCHAR2(16);
	lv_sga VARCHAR2(16);
	lv_pga VARCHAR2(16);
	lv_max_cursors VARCHAR2(16);
	lv_open_cursors VARCHAR2(16);
BEGIN
	--允许最大连接数以及当前进程连接数
	select value into lv_processes from v$parameter where name = 'processes';
	select to_char(count(*)) into lv_process from v$process;
	select to_char(count(*)) into lv_sessions from v$session;
		DBMS_OUTPUT.PUT_LINE('<table WIDTH=600 BORDER=1>');
		DBMS_OUTPUT.PUT_LINE('<td>允许的最大连接数：'||lv_processes||'，当前进程的连接数：'||lv_process||'，当前会话的连接数：'||lv_sessions||'</td>');
		DBMS_OUTPUT.PUT_LINE('</table> ');
	--memory_target
	SELECT value/1024/1024 into lv_memory_target FROM v$parameter WHERE name='memory_target';
	SELECT value/1024/1024 into lv_pga FROM v$parameter WHERE name='pga_aggregate_target';
	SELECT value/1024/1024 into lv_sga FROM v$parameter WHERE name='sga_target';
	SELECT value/1024/1024 into lv_max_memory_target FROM v$parameter WHERE name='memory_max_target';
	IF lv_memory_target<>0 THEN 
		DBMS_OUTPUT.PUT_LINE('<table WIDTH=600 BORDER=1>');
		DBMS_OUTPUT.PUT_LINE('<td>memory_target值为'||lv_memory_target||',ORACLE会自动设置并调整分配SGA和PGA,其关系为：memory_target = sga+pga</td>');
		DBMS_OUTPUT.PUT_LINE('</table> ');
	ELSE 
		DBMS_OUTPUT.PUT_LINE('<table WIDTH=600 BORDER=1>');
		DBMS_OUTPUT.PUT_LINE('<td>memory_target值为'||lv_memory_target||',ORACLE不会自动设置并调整分配SGA和PGA，其中SGA为'||lv_sga||'M,PGA为'||lv_pga||'M</td>');
		DBMS_OUTPUT.PUT_LINE('</table> ');
	END IF;
	----open_cursors
	SELECT MAX(A.VALUE) into lv_max_cursors FROM V$SESSTAT A,V$STATNAME B WHERE A.STATISTIC#=B.STATISTIC# AND B.NAME='opened cursors current';
	SELECT VALUE INTO lv_open_cursors FROM V$PARAMETER WHERE NAME='open_cursors' ;
		DBMS_OUTPUT.PUT_LINE('<table WIDTH=600 BORDER=1>');
		DBMS_OUTPUT.PUT_LINE('<td>实际打开的游标最大值：'||lv_max_cursors||'，当前参数open_cursors：'||lv_open_cursors||'</td>');
		DBMS_OUTPUT.PUT_LINE('</table> ');
END; 
/