<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<c:import url="../common/header.jsp" />
<div>
	<h1>에러 발생</h1>
	error code : <span>${code}</span>
	<br>error msg : <span>${msg}</span>
	<br>timestamp : <span>${timestamp}</span>
</div>
<c:import url="../common/footer.jsp" />

</body>
</html>