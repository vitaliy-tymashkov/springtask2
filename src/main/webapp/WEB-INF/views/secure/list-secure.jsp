<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring Security Basic Demo (XML) list SECURE page</title>
</head>

<body>
    <div align="center">
        <h1>Spring Security Basic Demo (XML) list SECURE page</h1>
        <a href="./admin">Go to Administrator Page</a>
    </div>

    <h3 align = 'center'>List SECURE page - Current user is:
    <font color='red'>${pageContext.request.userPrincipal.name}
    </font>
    </h3>

    <div>
    <p><a href="../">Home Page</a>
    <p><a href="./list">List Page</a>
    <p><a href="./list-secure">List SECURE Page</a>
    </div>

    <div>
    Doesn't work
    <p><a href="./index1.html">index1.html Page 1</a>
    </div>
</body>
</html>