<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<sql:setDataSource
var="myoracle"
driver="oracle.jdbc.driver.OracleDriver"
url="jdbc:oracle:thin:@localhost:1521:xe"
user="system"
password="1234"
/>
<sql:update var="rs" dataSource="${myoracle}">
insert into phonebook values(phonebook_id_seq.nextval,?,?,?)
<sql:param value="${param.name}"/>
<sql:param value="${param.hp}"/>
<sql:param value="${param.memo}"/>
</sql:update>

<jsp:forward page="/insert.jsp"/>