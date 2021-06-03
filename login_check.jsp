<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import="java.sql.*" %>
<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>투명한 기부</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<a href="index_a.jsp" class="logo"><strong>기부</strong> &nbsp'나만의 투명한 기부 참여'</a>
								</header>


							<!-- Banner -->
								<section id="banner">
									<div class="col-6 col-12-small">
										<ul class="actions stacked">
											<li><a href="login_a.jsp"class="button primary fit">Donator</a></li>
											<li><a href="login_a.jsp" class="button primary fit" >Donation organization </a></li>
										</ul>
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