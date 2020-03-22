<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <body>
        <div align="center">
        <h1 id="banner">Unauthorized Access !!</h1>

        <hr />

        <c:if test="${not empty error}">
            <div style="color:red">
                Your fake login attempt was bursted, try again !!<br />
                Caused : ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
            </div>
        </c:if>

        <p class="message">Access denied!</p>
        <p><a href="./">Home Page</a>
        <p><a href="./login">Go back to login page</a>
        </div>
    </body>
</html>