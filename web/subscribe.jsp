<%-- 
    Document   : subscribe
    Created on : 04-Jun-2017, 23:29:25
    Author     : i Rashadul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Subscribe</title>
    </head>
    <body>
        <jsp:include page='header.jsp'>
            <jsp:param name="header" value=""/>
        </jsp:include>
        
        <table border="0" align="center">
            <tbody>
                <tr>
                    <td>        
                        <form align= "center" name="subscriber" action="subscriber.jsp" method="POST">
                            Enter email address: <input type="text" name="email" value="test@gmail.com" size="100" />
                            <input type="submit" value="subscribe" name="subscribe" />
                        </form>
                    </td>
                    <td></td>
                </tr>
            </tbody>
        </table>
        
        <jsp:include page='footer.jsp'>
            <jsp:param name="footer" value=""/>
        </jsp:include>    </body>
</html>
