<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sptg" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Omen</title>
<link rel="alternate" type="application/rss+xml" title="Omen RSS"
	href="http://localhost:8080/omen/endofworld/?century=20&format=rss" />
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="/Armory/resources/css/main.css">
</head>
<body>

	<sptg:header tab="start" />


	<div class="jumbotron">
		<p></p>
		<p id="main_page_text">${sessionScope.progress}</p>
	</div>

	<sptg:footer />

</body>
</html>