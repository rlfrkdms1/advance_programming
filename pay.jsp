<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="point.point" %>
<%@ page import="point.pointDAO" %>
<%@ page import="org.orgVO" %>
<%@ page import="org.orgDAO" %>

<%
	orgVO orgVO=new orgVO();
	orgDAO orgDAO=new orgDAO();
	point point=new point();
	pointDAO pointDAO=new pointDAO();
	String Oid=(String)request.getParameter("Oid"); 
	String MPid=(String)session.getAttribute("user");
	pointDAO.setMPid(Oid,MPid);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%=Oid %></title>
</head>
<body>
<script>
alert("결제가 완료 되었습니다.");
location.href = 'index_a.jsp';
</script>
</body>
</html>