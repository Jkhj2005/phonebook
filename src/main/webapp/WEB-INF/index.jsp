<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<fieldset>
<legend>목록보기</legend>
검색<input type="text" name="key" id="key" onkeyup="search(this)">
<button onclick="reqpage('insertform','insert')">입력</button>
<div id="insert"></div>
<div id="list" style="height: 300px; overflow: scroll; overflow-x: hidden;"></div>
</fieldset>
<fieldset>
<legend>상세보기</legend>
<div id="view"></div>
</fieldset>
<script>
reqpage('list','list');
function search(obj) {
	var key=obj.value;
	fetch ('/searchlist?key='+key)
	.then(obj => obj.text())
	.then(text =>
	document.querySelector("#list").innerHTML=text
	)
	}
function reqpage(page,area) {
fetch ('/'+page)
.then(obj => obj.text())
.then(text =>
document.querySelector("#"+area).innerHTML=text
)
}
</script>
</body>
</html>