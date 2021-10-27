<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="./css/style.css"/>
	</head>
	<body>
		<h1>All Books</h1>
		<div class="containerTable" >
			<table class="tdText1">
			    <thead>
			        <tr>
			            <th class="thText1" >Title</th>
			            <th class="thText1" >Description</th>
			            <th class="thText1" >Language</th>
			            <th class="thText1" >Number of Pages</th>
			        </tr>
			    </thead>
			    <tbody>
			        <c:forEach items="${books}" var="book">
			        <tr>
			            <td class="tdText1" ><a class="title" href="/api/book/${book.id}"><c:out value="${book.title}"/></a></td>
			            <td class="tdText1" ><c:out value="${book.description}"/></td>
			            <td class="tdText1" ><c:out value="${book.language}"/></td>
			            <td class="tdText1" ><c:out value="${book.numberOfPages}"/></td>
			        </tr>
			        </c:forEach>
			    </tbody>
			</table>
			<a href="/books/new">New Book</a>
		</div>
	</body>
</html>

