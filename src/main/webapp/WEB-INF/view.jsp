<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${pb.id}
${pb.name}
${pb.hp}
${pb.memo}
<input type="button" value="update" onclick="location.href='/updatefrom?id=${pb.id}'">
<input type="button" value="delete" onclick="location.href='/delete?id=${pb.id}'">
</body>
</html>