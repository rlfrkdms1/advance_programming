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
										if (session_id==null) log="<a href=login_check.jsp>log in</a>"; else log="<a href=logout.jsp>log out</a>";
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
											<h4>회원 정보</h4>
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
												mySQL= "SELECT  password,point FROM Member_ad WHERE MPid='" + session_id + "'";
												myResultSet = stmt.executeQuery(mySQL);
												if (myResultSet != null) {
												while (myResultSet.next()) {
												int point = myResultSet.getInt("point");
												String password = myResultSet.getString("password");
											%>
												<li>이름: <%=session_name%> </li>
												<li>e-mail: <%=session_id%> </li>
												<li>password: <%=password%></li>
											</ul>
										</div>
										
										<div class="col-12 col-2-medium">
											<h4>포인트 조회/충전</h4>
											<FORM method="post" action="point_update.jsp"  align="left">
											<ul class="alt">
												<li>잔여 포인트: <%=point%> point</li> 
												<li>충전 포인트 
													<input type="text" name="points"  size=10 placeholder="충전 금액(원)">
												</li>
												<li> 
													<th>
														<select name="total" >
															<option ></option>
															<option value=<%=point%>>카드 결제</option>
															<option value=<%=point%>>무통장 입금</option>
															<option value=<%=point%>>계좌 이체</option>
														</select> 
													</th>
												</li>
												<%}}%>
												<li><INPUT TYPE="SUBMIT" NAME="Submit" VALUE="payment"></li>
											</ul>
											</FORM>
										</div>

										<div class="col-12 col-2-medium">
											<h4>재능 기부 조회/등록</h4>
											<FORM method="post" action="talent_insert.jsp".jsp"  align="left">
											<ul class="alt">
												<%
												mySQL= "SELECT talent_name, time from talent where Mpid='" + session_id + "'";
												myResultSet = stmt.executeQuery(mySQL);
												
												if (myResultSet != null) {
												while (myResultSet.next()) {
												String talent_name = myResultSet.getString("talent_name");
												String time = myResultSet.getString("time");
											    %>

												<li><%=talent_name%> :  <%=time%></li>

												<%}}%>

												<li>재능 등록
													<input type="text" name="talents"  size=10 placeholder="재능 입력">
												</li>
												<li>재능 기부 가능한 시간
													<th>
														<select name="time" >
															<option ></option>
															<option value="Week">week</option>
															<option value="Weekend">weekend</option>
															<option value="Week&Weekend">week/weekend</option>
														</select> 
													</th>
												</li>
												<li><INPUT TYPE="SUBMIT" NAME="Submit" VALUE="registration"></li>
											</ul>
											</FORM>
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