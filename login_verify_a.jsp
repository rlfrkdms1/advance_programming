<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
String userID = request.getParameter("email");
String userPassword = request.getParameter("password");

Connection myConn = null; 
Statement stmt = null; 
String mySQL = null;

String driver="oracle.jdbc.driver.OracleDriver";
String url= "jdbc:oracle:thin:@210.94.199.20:1521:dblab";
Boolean connect =false;
try{
     Class.forName(driver);
     myConn= DriverManager.getConnection(url,"ST2019112010" ,"ST2019112010" );
     connect=true;
  }catch(Exception e){ 
    connect=false;
    out.print(e);
}

stmt = myConn.createStatement();
mySQL = "SELECT  MPid,password,M_name FROM Member_ad WHERE MPid='" + userID + "'AND password='" + userPassword +"'";
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
location.href = "login_a.jsp"; </script>
<% }
stmt.close();
myConn.close(); 
%>
