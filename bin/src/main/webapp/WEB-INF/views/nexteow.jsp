<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sptg" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Halál - ${requestScope.date}</title>
<link rel="stylesheet"
    href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="/omen/resources/css/main.css">
</head>
<body>

    <sptg:header tab="nexteow" />

    <div class="jumbotron">
        <p>A következő elhalálozásod (${requestScope.date}-hez képest)</p>

        <p id="main_page_text">
        <table class="table table-striped">
            <tr>
                <th>Date</th>
                <th>Happening</th>
            </tr>
            <tr>
                <td><fmt:formatDate pattern="yyyy" value="${nextEOWEvent.date}" /></td>
                <td>${nextEOWEvent.happening}</td>
            </tr>
        </table>
        </p>
    </div>

    <sptg:footer />

</body>
</html>
