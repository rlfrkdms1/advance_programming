<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import="java.sql.*" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>투명한 기부</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body class="is-preload">
		<%
		String session_id = (String)session.getAttribute("user");
		String session_name  = (String)session.getAttribute("name");
		%> 
		<% if (session_id==null) response.sendRedirect("login_a.jsp"); %>
		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<%
										String log;
										String tmp_name="여러분";
										if (session_id==null) log="<a href=login_a.jsp>log in</a>"; else log="<a href=logout.jsp>log out</a>";
										if (session_id==null) tmp_name=session_name; else tmp_name="여러분";
										
									%>
									<a href="index_a.jsp" class="logo"><strong>기부</strong> &nbsp'<%=session_name%>의 투명한 기부 참여'</a>
									<ul class="icons">
										<%=log%>
									</ul>
									
								</header>


							<!-- Banner -->
								<section id="banner">
									<div class="row">
										<div class="col-12 col-2-medium">
											<ul class="alt">
                                                <div class="col-12 col-2-medium">
                                                    <h4>포인트 공유 서류 조회</h4>
                                                    <ul class="alt">
												<%
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
												ResultSet myResultSet;
												mySQL= "SELECT  PRODUCTNAME, documentId, ORGNAME, o.POINT, o.oid FROM orgDocument d, organization o WHERE MPid='" + session_id + "' AND d.Oid=o.Oid";
												myResultSet = stmt.executeQuery(mySQL);
                                                int date=2;
												if (myResultSet != null) {
												while (myResultSet.next()) {
                                                date++;
												int use_point = myResultSet.getInt("point");
												String o_name = myResultSet.getString("ORGNAME");
												String PRODUCTNAME = myResultSet.getString("PRODUCTNAME");
												String documentId = myResultSet.getString("documentId");
												String oid = myResultSet.getString("oid");
												
											%>
												<li><a href="shared_verify.jsp?oid=<%=oid%>&documentId=<%=documentId%>&PRODUCTNAME=<%=PRODUCTNAME%>&use_point=<%=use_point%>"><%=o_name%> <%=use_point%> pt</a> : 2021년 5월 <%=date%> 일</li>
												
                                                <%}}%>
											</ul>
										</div>

									</div>
								</section>
						</div>
					</div>
				<!-- Sidebar -->
					<div id="sidebar">
						<div class="inner">
							<!-- Menu -->
							<nav id="menu">
								<header class="major">
									<h2><a href="index_a.jsp">PODO</a></h2>
								</header>
								<ul>
								   <li><span class="opener">MY PAGE</span>
									  <ul>
										 <li><a href="mypage_a.jsp">회원정보 조회</a></li>
										 <li><a href="mypage_a.jsp">포인트 적립</a></li>
										 <li><a href="mypage_a_jsp">재능 등록</a></li>
									  </ul></li>                              
								   
								   <li><span class="opener">기부 하기</span>
									  <ul>
										 <li><a href="viewCorp2.jsp">물품 기부</a></li>
										 <li><a href="point_view.jsp">포인트 기부</a></li>
									  </ul></li>   
								   <li><a href="review.jsp">후기 열람</a></li>
								   <li><a href="shared.jsp">공유 서류 조회</a></li>
								</ul>
							 </nav>

								<section>
									<header class="major">
										<h2>Get in touch</h2>
									</header>
									<ul class="contact">
										<li class="icon solid fa-envelope"><a href="#">tangerinelove@naver.com</a></li>
										<li class="icon solid fa-phone">(+82) 10-3116-7130</li>
										<li class="icon solid fa-home">30, Pildong-ro 1-gil, Jung-gu<br />
										Seoul, Republic of Korea</li>
									</ul>
								</section>
							<!-- Footer -->
						</div>
					</div>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>