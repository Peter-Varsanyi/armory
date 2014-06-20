<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sptg" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jelents új EOW-ot! - step 3</title>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="/omen/resources/css/main.css">
</head>
<body>

	<sptg:header tab="reporteow" />

	<div class="jumbotron">
		<p>Új EOW Step3</p>

		<p id="main_page_text">
		<form class="form-horizontal" role="form"
			action="/omen/reporteow?step=4&debug=all" method="post">

			<div class="checkbox">
				<label> <input type="checkbox" name="stupid"> Hülye vagy
					egyébként?
				</label>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">Next</button>
				</div>
			</div>
			<a href="<c:url value='/reporteow?step=2&debug=all'/>" class="btn btn-default" role="button">Back</a>
		</form>

		</p>

	</div>

	<sptg:footer />

</body>
</html>