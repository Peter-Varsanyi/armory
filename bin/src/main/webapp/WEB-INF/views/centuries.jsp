<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sptg" tagdir="/WEB-INF/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Century - ${requestScope.century}</title>
<link rel="stylesheet"
    href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="/omen/resources/css/main.css">
</head>
<body>

    <sptg:header tab="centuries" />

    <div class="jumbotron">
        <p>Ekkor várták az emberek a halált a ${requestScope.century}.
            században</p>

        <p id="main_page_text">
        <table class="table table-striped">
            <tr>
                <th>Date</th>
                <th>Happening</th>
            </tr>
            <c:forEach items="${requestScope.eventList}" var="item">
                <tr>
                    <td><fmt:formatDate value="${item.date}" pattern="yyyy"/></td>
                    <td>${item.happening}</td>
                </tr>
            </c:forEach>
        </table>
        </p>
    </div>

    <sptg:footer />

</body>
</html>
