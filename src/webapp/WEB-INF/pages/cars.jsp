<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="locale" uri="http://www.springframework.org/tags" %>


<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
    <title>Cars</title>
</head>
<body>

<a href="<%=request.getContextPath()%>?locale=en">EN</a>
<a href="<%=request.getContextPath()%>?locale=ru">RU</a>

<h1><spring:message code="nameTable.cars"/></h1>

<table class="table table-bordered">
    <thead>
    <tr>
        <th><spring:message code="carId.cars"/></th>
        <th><spring:message code="carName.cars"/></th>
        <th><spring:message code="carCost.cars"/></th>
        <th><spring:message code="carSpeed.cars"/></th>
    </tr>
    </thead>
    <tbody>

    <c:forEach var="car" items="${carList}">
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.name}"/></td>
            <td><c:out value="${car.cost}"/></td>
            <td><c:out value="${car.speed}"/></td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<a href="/hello">See Hello Page</a>

</body>
</html>
