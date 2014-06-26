<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ attribute name="tab" required="true" rtexprvalue="false" %>
<%@ tag body-content="empty" pageEncoding="UTF-8"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="/Armory">Armory 
			
			</a>
		</div>
	</div>
</div>

<div class="page-header">
	<h1>
		Last update: 
	</h1>
	<em>${requestScope.lastUpdate}</em>
</div>

