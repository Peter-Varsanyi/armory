<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ tag body-content="empty" pageEncoding="UTF-8"%>
<%@ attribute name="scope" required="false" rtexprvalue="false" %>

	<c:if test="${empty scope}">
		<c:set var="scope" value="${param.debug}"/>
	</c:if>
	
	<c:if test="${(scope eq 'page') or scope eq 'all'}">
		<b><u>Page scope</u></b><br />
		<c:forEach items="${pageScope}" var="item">
			<b><c:out value="${item.key}" />:</b>	
			<c:out value="${item.value}" /><br/>
		</c:forEach>
	</c:if>
	<br />
	<br />
	<c:if test="${(scope eq 'request') or scope eq 'all'}">
		<b><u>Request scope</u></b><br />
		<c:forEach items="${requestScope}" var="item">
			<b><c:out value="${item.key}" />:</b>	
			<c:out value="${item.value}" /><br/>
		</c:forEach>
	</c:if>
	<br />
	<br />
	<c:if test="${(scope eq 'session') or scope eq 'all'}">
		<b><u>Session scope</u></b><br />
		<c:forEach items="${sessionScope}" var="item">
			<b><c:out value="${item.key}" />:</b>	
			<c:out value="${item.value}" /><br/>
		</c:forEach>
	</c:if>	
	<br />
	<br />
	<c:if test="${(scope eq 'app') or scope eq 'all'}">
		<b><u>Application scope</u></b><br />
		<c:forEach items="${applicationScope}" var="item">
			<b><c:out value="${item.key}" />:</b>	
			<c:out value="${item.value}" /><br/>
		</c:forEach>
	</c:if>