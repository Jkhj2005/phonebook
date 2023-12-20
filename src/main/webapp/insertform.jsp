<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/insert.jsp" method="post">
<fieldset>
<legend>전화번호부 입력</legend>
name<input type="text" name="name" id="name">
hp<input type="text" name="hp" id="hp">
memo<input type="text" name="memo" id="memo">
<input type="submit" value="start">
</fieldset>
</form>
</body>
</html>