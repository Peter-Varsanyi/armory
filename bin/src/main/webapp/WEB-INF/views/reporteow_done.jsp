<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sptg" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jelents új EOW-ot! - step 2</title>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="/omen/resources/css/main.css">
</head>
<body>

	<sptg:header tab="reporteow" />

	<div class="jumbotron">
		<p>Köszi!</p>
		<p id="main_page_text">
			${reportEOWForm}
			<br/>
			<a href="<c:url value='/'/>" class="btn btn-default" role="button">Done</a>
		</p>

	</div>

	<sptg:footer />

</body>
</html>