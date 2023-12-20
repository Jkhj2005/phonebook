<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/update" method="post">
<fieldset>
<legend>전화번호부 수정</legend>
id<input type="text" name="id" id="id" value="${pb.id}"readonly>
name<input type="text" name="name" id="name" value="${pb.name}">
hp<input type="text" name="hp" id="hp" value="${pb.hp}">
memo<input type="text" name="memo" id="memo" value="${pb.memo}">
<input type="submit" value="start">
</fieldset>
</form>
</body>
</html>