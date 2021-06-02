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
        
        String oid = request.getParameter("oid");
        String PRODUCTNAME = request.getParameter("PRODUCTNAME");
        String use_point = request.getParameter("use_point");
        String documentId = request.getParameter("documentId");
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
									
                                         
                                                        단체명: <%=oid%> 
                                                        <br>
                                                        사용된 총 포인트: <%=use_point%> pt    
                                                        <br>
                                                        상세 내역: <%=PRODUCTNAME%>
                            

                                                
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
										<h2><a href="index_a.jsp">NE donation</a></h2>
									</header>
									<ul>
										<li><span class="opener">MY PAGE</span>
											<ul>
												<li><a href="mypage_a.jsp">회원정보 조회</a></li>
												<li><a href="mypage_a.jsp">포인트 적립</a></li>
												<li><a href="mypage_a.jsp">재능 등록</a></li>
											</ul></li>
										<li><a href="shared.jsp">공유 서류</a></li>
										<li><a href="elements.html">재능 기부</a></li>
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