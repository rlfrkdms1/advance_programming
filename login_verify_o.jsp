<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
String userID = request.getParameter("email");
String userPassword = request.getParameter("password");

Connection myConn = null;
Statement stmt = null;
String mySQL = null;

String driver="oracle.jdbc.driver.OracleDriver";
String url= "";
Boolean connect =false;
try{
     Class.forName(driver);
     myConn= DriverManager.getConnection(url,"" ,"" );
     connect=true;
  }catch(Exception e){
    connect=false;
    out.print(e);
}

stmt = myConn.createStatement();
mySQL = "";
String name;
ResultSet myResultSet = stmt.executeQuery(mySQL);
if (myResultSet.next()) {
name= myResultSet.getString("M_name");
session.setAttribute("user", userID);
session.setAttribute("name", name);
response.sendRedirect("index_a.jsp");
}
else {
%>
<script>
alert("사용자아이디 혹은 암호가 틀렸습니다");
location.href = ""; </script>
<% }
stmt.close();
myConn.close();
%>
