<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Cars</title>
</head>
<body>

<c:forEach var="car" items="${carList}">
    <h1>${car}</h1>
</c:forEach>

</body>
</html>
