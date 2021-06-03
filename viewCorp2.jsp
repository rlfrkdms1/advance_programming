<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.*" %>

<%!// 변수 선언
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String uid = "ST2019112010";
	String pwd = "ST2019112010";
	String url = "jdbc:oracle:thin:@210.94.199.20:1521:dblab";
	String sql = "select orgname, oid, address  from organization";
%> 
	

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

	<!--
		<script>
			function get_src(id){
				var click_id = id;				
			}
		</script> -->
		
		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
							<header id="header">
								<%
								String session_id = (String)session.getAttribute("user");
								String session_name  = (String)session.getAttribute("name");
								
								%> 
								<% if (session_id==null) response.sendRedirect("login_a.jsp"); %>

								<%
									String tmp_name;
									String log;
									if (session_id==null) log="<a href=login_check.jsp>log in</a>"; else log="<a href=logout.jsp>log out</a>";
									if (session_id!=null) tmp_name=session_name; else tmp_name="여러분";
									%>
								<a href="index_a.jsp" class="logo"><strong>기부</strong> &nbsp'<%=tmp_name%>님의 투명한 기부 참여'</a>
								<ul class="icons">
									<li><%=log%></li>
								</ul>
								
							</header>


         <!-- Section
          <section>
            <header class="main">
              <button class="button primary large" onclick="productClick()">
                product
              </button>
              <button class="button primary large" onclick="talentClick()">
                talent
                </button>
            </header>
          </section>
		 -->
		 
          <section style="border-top: none" class="product">
            <div class="posts">
		    
		    <%
					try {
						// 데이터베이스를 접속하기 위한 드라이버 SW 로드
						Class.forName("oracle.jdbc.driver.OracleDriver");
						// 데이터베이스에 연결하는 작업 수행
						conn = DriverManager.getConnection(url,"ST2019112010" ,"ST2019112010" );
						// 쿼리를 생성gkf 객체 생성
						stmt = conn.createStatement();
						// 쿼리 생성
						rs = stmt.executeQuery(sql);
					%>

					<%
						int i=1;
						while (rs.next()) {
							String a ="images/vol";
							String result=a+i+".jpg";
					%>			
					<article>
               		<a href="corpDetail.jsp?id=<%=rs.getString("oid")%>" class="image" id="images/vol1.jpg" onclick="get_src(this.id)">
					<img src="<%= result%>" width=500px height=280px/>
                	</a>

                	<h3><%=rs.getString("ORGNAME")%></h3>
                	<h3><%=rs.getString("address")%></h3>
                
              		</article>
					
	
					<%
					i++;
						}
					} catch (Exception e) {
					e.printStackTrace();
					} finally {
					try {
					if (rs != null) {
						rs.close();
					}
					if (stmt != null) {
						stmt.close();
					}
					if (conn != null) {
						conn.close();
					}
					} catch (Exception e) {
					e.printStackTrace();
					}
					}
				%>

              
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