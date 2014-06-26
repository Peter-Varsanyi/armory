<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sptg" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Armory</title>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="/Armory/resources/css/main.css">
</head>
<body>

	<sptg:header tab="home" />


	<div class="jumbotron">
		<p></p>
		<ul>
		<c:forEach items="${ sessionScope.progress }" var="item">
			<li>${ item }</li>
		</c:forEach>
		</ul>
		
		<br>
		Progress: <c:out value="${ fn:length(sessionScope.fetcher.characters) }"></c:out>/<c:out value="${ fn:length(sessionScope.fetcher.members) }"></c:out>
		<ul>
		<c:forEach items="${ sessionScope.fetcher.characters }" var="character">
			<c:if test="${ fn:length(character.errors) > 0 }">
			<li><c:out value="${ character.name }"></c:out> </li>
			<ul>
			
			<c:forEach items=" ${ character.errors }" var="error">
			<li><c:out value="${ error }"></c:out></li>
			</c:forEach>
			</ul>
			</c:if>
		</c:forEach>
		</ul>
		<p id="main_page_text">${sessionScope.progress}</p>
	</div>

	<sptg:footer />

</body>
</html>