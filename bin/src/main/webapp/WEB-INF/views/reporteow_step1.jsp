<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sptg" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jelents új EOW-ot! - step 1</title>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="/omen/resources/css/main.css">
</head>
<body>

	<sptg:header tab="reporteow" />

	<div class="jumbotron">
		<p>Új EOW Step1</p>

		<p id="main_page_text">
		
		<form:form modelAttribute="reportEOWForm" class="form-horizontal" role="form" action="/omen/reporteow?step=2&debug=all" method="post">
		
		
			<div class="form-group">
				<label for="input_name" class="col-sm-2 control-label">Név</label>
				<div class="col-sm-10">
					<form:input path="name" type="text" class="form-control" id="input_name"
						placeholder="Név" name="name" />
					<form:errors path="name"/>
				</div>
			</div>
			<div class="form-group">
				<label for="input_email" class="col-sm-2 control-label">Email cím</label>
				<div class="col-sm-10">
					<form:input type="text" class="form-control" id="input_email"
						placeholder="E-mail" name="email" path="email"/>
					<form:errors path="email"/>
				</div>
			</div>
			<div class="form-group">
				<label for="input_birthday" class="col-sm-2 control-label">Születési dátum</label>
				<div class="col-sm-10">
				<fmt:formatDate value="${reportEOWForm.birthday}" var="dateString" pattern="yyyy-MM-dd" />
					<form:input type="text" class="form-control" id="input_birthday"
						placeholder="Szülinap" name="birthday" path="birthday" value="${dateString }"/>
					<form:errors path="birthday"/>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">Next</button>
				</div>
			</div>
		</form:form>

		</p>

	</div>

	<sptg:footer />

</body>
</html>