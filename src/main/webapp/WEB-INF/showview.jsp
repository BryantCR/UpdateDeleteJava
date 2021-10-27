<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Show</title>
	</head>
	<body>
		<div class="holdBody">
			<c:set var="result" value="${ result }"/>
			<h1 class="title">
				Submitted Info
			</h1>
			<p class="classs2">Name: <c:out value="${ result.getFirstName() }"/></p>
			<p class="classs2">Language: <c:out value="${ result.getfLanguage() }"/></p>
			<p class="classs2">Location: <c:out value="${ result.getDojoLocation() }"/></p>
			<p class="classs2">Comment: <c:out value="${ result.getComment() }"/></p>
			<a href="/home" id="back">Go back</a>
		</div>
	</body>
</html>
