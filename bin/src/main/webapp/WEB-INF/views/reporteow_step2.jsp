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
		<p>Új EOW Step2</p>

		<p id="main_page_text">
		
		<form class="form-horizontal" role="form" action="/omen/reporteow?step=3&debug=all" method="post">
		
			<div class="form-group">
				<label for="input_date" class="col-sm-2 control-label">Dátum</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="input_date"
						placeholder="Esemény dátum" name="eventDate" value="<fmt:formatDate pattern="yyyy.MM.dd" value="${sessionScope.reportEOWForm.eventDate}" />">
				</div>
			</div>
			<div class="form-group">
				<label for="input_eventName" class="col-sm-2 control-label">Név</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="input_eventName"
						placeholder="Esemény név" name="eventName" value="${sessionScope.reportEOWForm.eventName}">
				</div>
			</div>
			<div class="form-group">
				<label for="input_description" class="col-sm-2 control-label">Leírás</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="input_description"
						placeholder="Esemény leírás" name="eventDescription" value="${sessionScope.reportEOWForm.eventDescription}">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">Next</button>
				</div>
			</div>
			
			<a href="<c:url value='/reporteow?step=1&debug=all'/>" class="btn btn-default" role="button">Back</a>
		</form>

		</p>

	</div>

	<sptg:footer />

</body>
</html>