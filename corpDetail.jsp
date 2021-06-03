<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.*" %>

<%
	String id = request.getParameter("id");

	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String uid = "ST2019112010";
	String pwd = "ST2019112010";
	String url = "jdbc:oracle:thin:@210.94.199.20:1521:dblab";
	String sql = "select * from orgproduct A, organization B where A.oid = " + "'" + id + "'" + " and B.oid = " + "'" + id + "'";
	String group = null;
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
	  
	  <script type="text/javascript">
		
	  function button_event(){

				if (confirm("선택한 물품을 보내시겠어요?") == true){    //확인
						///체크박스 비활성화

    				alert("물품을 기부해주셔서 감사합니다.😊 \n현재 선택해주신 물품은 다른 기부자가 선택할 수 없게 됩니다.\n이주내로 물품이 도착하지 않을시 다시 다른 기부자가 기부할 수 있는 기회를 갖게됩니다.🥵\n단체가 늦지않게 물품을 받을 수 있도록 도와주세요!😇");
					const target = document.getElementById('4');
					  target.disabled = true;
					  document.getElementById('button1').style.opacity = "0";
					

					}else{   //취소

    					return;
					}
		}
	</script> 
   </head>
   <body class="is-preload">
   
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
         <!-- Section -->
          <section>
            <header class="main">               
            </header>
            
             <%
					try {
						// 데이터베이스를 접속하기 위한 드라이버 SW 로드
						Class.forName("oracle.jdbc.driver.OracleDriver");
						// 데이터베이스에 연결하는 작업 수행
						conn = DriverManager.getConnection(url, "ST2019112010", "ST2019112010");
						// 쿼리를 생성gkf 객체 생성
						stmt = conn.createStatement();
						// 쿼리 생성
						rs = stmt.executeQuery("select distinct orgname from organization where oid = " + "'" + id + "'");
					%>

					<%
						if (rs.next()) {
							group = rs.getString("orgname");
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
            
            
            <div class="corpInfo" style="padding:15px; height: auto; width: 100%; border:3px solid #f56a6a; border-radius:3%">
               <h3><br/><%=group%>(청렴온도 : 88도)<br/></h3>
               
               <div class="aboutCorp">
                  <div class="form-group col-sm-6">
                     <div class="image" style="font-size:20px">
                        <img src="images/vol1.jpg" alt="" align="left">우리단체는 아이를 사랑하는 보육원으로서 <br>아이들의 행복한 미래를 지원합니다.<br clear="left">
                     </div>
                    </div>
               </div>                          
               
               <div class="checkStuffs">
                  <h4><br>기부를 원하는 물품을 선택해주세요</h4> 
                  
                   <%
					try {
						// 데이터베이스를 접속하기 위한 드라이버 SW 로드
						Class.forName("oracle.jdbc.driver.OracleDriver");
						// 데이터베이스에 연결하는 작업 수행
						conn = DriverManager.getConnection(url, "ST2019112010", "ST2019112010");
						// 쿼리를 생성gkf 객체 생성
						stmt = conn.createStatement();
						// 쿼리 생성
						rs = stmt.executeQuery(sql);
					%>

					<%
						while (rs.next()) {
					%>
					<input type="checkbox">
                    <label><%=rs.getString("productname")%></label>  
					<%
					
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
				<div id="button1">
				 <input type="checkbox" name="btn1" id="4" onclick=button_event> <label for="4">물티슈 20개</label>
                </div>
              </div> 
              <div>
              </div> 
              
              <div>
              	<br>
              	<h4>사람들이 작성한 후기글<br></h4><h5>: 익명1(20.12.16작성) - 항상 공지한대로 포인트가 사용되는게 공유서류에서 보여서 만족스러워요.^^ </h5>             	
              	<h5>: 익명2(21.01.05작성) - 과하지 않게 늘 필요한만큼만 물품을 신청하는 것이 신뢰도를 높이네요.</h5>
              </div>                
  
            <div style="text-align: right;">
            <a href="#" onclick=button_event()>
            <button class="button primary large">
            	물품 기부하기  
             </button></a>
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