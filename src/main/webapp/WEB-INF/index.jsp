<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="./css/index.css"/>
	</head>
	<body>
		<div class="containerForm">
			<form action="/formfilled" method="POST">	
				<div class="class1">
			        <label>Your Name:</label>
			           <input name="firstName" type=text/>
			    </div>
			    <div class="class1">
			        <label>
			        	Dojo Location:
			        </label>
			        <select name="dojoLocation">
			            <option>
			                San Jose
			            </option>
			            
			            <option>
			                Texas
			            </option>
			            
			            <option>
			                Ohio
			            </option>
			        </select>
			    </div>
			    <div class="class1">
			        <label>Favorite Language:</label>
			        <select name="fLanguage">
			            <option>
			                Phyton
			            </option>
			            <option>
			                C#
			            </option>
			            <option>
			                Java
			            </option>
			            <option>
			                C++
			            </option>
			            <option>
			                Java Script
			            </option>
			        </select>
			    </div>
			    <div class="class1">
			        <label>Comment (optional):</label>
			        <textarea name="comment" placeholder="Your comment goes here!"></textarea>
			    </div>
			    <button class="submitButton" type="submit">
			        Submit
			    </button>
			</form>
		</div>
	</body>
</html>

