<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://www.aoins.com/aoenv/public/corp/css/2.0.1/agencyStyle.css" rel="stylesheet" type="text/css">
<link href="https://www.aoins.com/aoenv/public/corp/css/2.0.1/leftColumn.css" rel="stylesheet" type="text/css"><link href="rightColumn.css" rel="stylesheet" type="text/css">
<link href="https://www.aoins.com/aoenv/public/corp/css/2.0.1/rightCoumn.css" rel="stylesheet" type="text/css">
<title>Event Planner Login</title>
</head>
	<body>
		<div id="header">
			<img src="https://www.aoins.com/aoenv/images/corporateGraphics/header/header.png" alt="Auto Owners Insurance">
			<h1>[Tomcat6atLocalHost]</h1>
		</div>
		<div class="mainContainer" id="mainContainer">
			<div id="ribbon">
				<span id="date" class="right">January 26, 2013</span>
			</div>
			<div id="centerPanel">
				<h3 align="center">Auto-Owners User Login</h3>
				<div align="center">
					<form action="LoginServlet">
						Username: 		
						<input type="text" name="un"/><br>
					
						Password:
						<input type="password" name="pw"/><br>
			
			
						<input type="submit" value="Login" align="middle">	
					</form>
				</div>
				<div id="footer">&nbsp;</div>
			</div>
		</div>
	</body>
</html>