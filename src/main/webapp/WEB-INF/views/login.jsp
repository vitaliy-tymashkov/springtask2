<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body onload='document.loginForm.username.focus();'>
<div align='center'>
    <h1>Spring Security #57 - Custom Login Form</h1>

    <c:if test="${not empty errorMessage}">
    <div style="color:red; font-weight: bold; margin: 30px 0px;">${errorMessage}</div>
    </c:if>


    <form name='login'  method='POST'>
    Enter your credentials
        <table frame="box">
            <tr>
                <td>UserName:</td>
                <td><input type='text' name='username' value=''></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type='password' name='password' /></td>
            </tr>
            <tr>
                <td align='center' colspan='2'><input name="submit" type="submit" value="submit" /></td>
            </tr>

                       <tr>
                            <td>Remember Me:</td>
                            <td><input type="checkbox" name="remember-me-param" /></td>
                        </tr>

        </table>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    </form>

    <div>
                <textarea id="w3mission" rows="10" cols="100">
                    <user name="a" password="a" authorities="ROLE_ADMIN" />
                    <user name="u" password="u" authorities="ROLE_USER" />
                    <user name="r" password="r" authorities="REGISTERED_USER" />
                    <user name="m" password="m" authorities="BOOKING_MANAGER" />
                </textarea>
    </div>


        <p><a href="./">Home Page</a>
</div>
</body>
</html>