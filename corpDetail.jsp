<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page import="product.productVO" %>
<%@ page import="product.productDAO" %>
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

    							document.location.href="reviewing.jsp";

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
                           <h2><a href="viewCorp2.jsp">기부 물품 결제하기</a></h2>
                           <ul class="icons">
                              <li><a href="login.html"><span class="label">Login</span></a></li>
                              <li><a href="login.html"><span class="label">Logout</span></a></li>
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
               <h3><br/><%=group%><br/></h3>
               
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
              </div> 
              <div>
              </div> 
              
              <div>
              	<br>
              	<h4>사람들이 작성한 후기글<br>: (후기작성에서 받은 후기 뿌려줄 곳)</h4>
              </div>                
  
            <div style="text-align: right;">
            <a href="#" onclick=button_event()>
            <button class="button primary large">
            	결제하기  
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
                              <h2><a href="index.jsp">~~~~ donation</a></h2>
                           </header>
                           <ul>
                              <li><span class="opener">MY PAGE</span>
                                 <ul>
                                    <li><a href="#">회원정보 조회</a></li>
                                    <li><a href="#">포인트 적립</a></li>
                                    <li><a href="#">재능 등록</a></li>
                                    <li><a href="#">공유 서류 조회</a></li>
                                 </ul></li>                              
                              <li><a href="viewCorp2.jsp">기부 하기</a></li>
                              <li><a href="review.jsp">기부 후기</a></li>
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
            <script src="assets/js/apply.js"></script>
   </body>
</html>