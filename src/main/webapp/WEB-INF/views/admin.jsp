<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" session="true" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring Security Basic Demo (XML)</title>
</head>

<body>
    <div align="center">
        <h1>${title}</h1>
        <h2>${message}</h2>
        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <h2>Welcome : ${pageContext.request.userPrincipal.name} |

                <!-- BELOW IS NOT WORKING
                <a href="/<c:url value="/logout" />" > Logout</a>
                http://spring-task2-1.0-snapshot/logout
                -->

                <a href="logout" />Logout</a>
            </h2>
    </c:if>
    </div>

        <div>
        <p><a href="./">Home Page</a>
        <p><a href="./list">List Page</a>
        <p><a href="./secure/list-secure">List SECURE Page</a>
        </div>

</body>
</html>