<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ attribute name="tab" required="true" rtexprvalue="false" %>
<%@ tag body-content="empty" pageEncoding="UTF-8"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="/omen">Armory 
			
			</a>
		</div>
		<div class="navbar-collapse collapse">
			<form class="navbar-form navbar-right" role="form" action="/armory/j_spring_security_check" method="post">
			<security:authorize access="not isAuthenticated()">
				<div class="form-group">
					<input type="text" name="j_username" placeholder="User name" class="form-control">
				</div>
				<div class="form-group">
					<input type="password" name="j_password" placeholder="Password" class="form-control">
				</div>
					<button type="submit" class="btn btn-success">Sign in</button>
					<input id="remember_me" name="_spring_security_remember_me" type="checkbox"/>
				</security:authorize>
	
				<security:authorize access="isAuthenticated()">
					<a class="btn btn-info" role="button" href="/armory/j_spring_security_logout">Logout</a>
				</security:authorize>
			</form>
		</div>
	</div>
</div>

<div class="page-header">
	<h1>
		Last update: 
	</h1>
	<em>${requestScope.lastUpdate}</em>
</div>

