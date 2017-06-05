<%-- 
    Document   : subscriber
    Created on : 04-Jun-2017, 22:27:31
    Author     : i Rashadul

http://ruby.fgcu.edu/courses/mpenderg/gettingstartedwithnetbeans/SQLSERVERandNetbeans.html
https://www.mkyong.com/java/how-to-write-to-file-in-java-bufferedwriter-example/
--%>

<%@page import="java.util.regex.Pattern"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get your subscription to get the latest trend of the industry</title>
    </head>
    <body>
        <jsp:include page='header.jsp'>
            <jsp:param name="header" value=""/>
        </jsp:include>
        
        <%
            String emailAdd=request.getParameter("email"); 
            String subscribe=request.getParameter("subscribe"); 
            
                Connection connection = null;
                PreparedStatement pstatement = null;

                //int updateQuery = 0;
                int emailValidity = 0;
                Pattern ptr = Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);
                String emails = emailAdd;
                if(ptr.matcher(emails).matches()) 
                        emailValidity++;
                    //System.out.println(email + " is " + (ptr.matcher(email).matches() ? "valid" : "invalid"));
                
                if(emailValidity>0){
                    if(subscribe!=null){    
                            try{
                                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/subscribe","root","rashadul");

                                String queryString = "INSERT INTO subscribe(email) VALUES (?)";
                                pstatement = connection.prepareStatement(queryString);
                                pstatement.setString(1, emailAdd);
                                pstatement.executeUpdate();
                            } catch(Exception e){
                                System.out.print(e);
                                e.printStackTrace();
                                }finally {
                                    //connection.close();
                                    }    
                    }
                }    
        %>
        
        <table border="0" align="center">
            <tbody>
                <tr>
                    <td><h2>Thank you to subscribe with RDGB!</h2></td>
                </tr>
            </tbody>
        </table>
                            
        <jsp:include page='footer.jsp'>
            <jsp:param name="footer" value=""/>
        </jsp:include>
    </body>
</html>
