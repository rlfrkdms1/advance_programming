<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page import="point.point" %>
<%@ page import="point.pointDAO" %>
<%@ page import="org.orgVO" %>
<%@ page import="org.orgDAO" %>
<%@ page import="java.net.URLEncoder" %>
<%
	orgVO orgVO=new orgVO();
	orgDAO orgDAO=new orgDAO();
	point point=new point();
	pointDAO pointDAO=new pointDAO();
	
	String oid[];
	oid=pointDAO.getOid();
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
   		<%
		String session_id = (String)session.getAttribute("user");
		String session_name  = (String)session.getAttribute("name");
		%>

      <!-- Wrapper -->
         <div id="wrapper">
            <!-- Main -->
               <div id="main">
                  <div class="inner">

                     <!-- Header -->
                        <header id="header">
                           <h2><a href="viewCorp2.jsp">기부가 필요한 단체</a></h2>
									<%
										String tmp_name;
										String log;
										if (session_id==null) log="<a href=login_a.jsp>log in</a>"; else log="<a href=logout.jsp>log out</a>";
										if (session_id!=null) tmp_name=session_name; else tmp_name="여러분";
										%>
                           			<ul class="icons">
										<li><%=log%></li>
									</ul>
                        </header>

          <section style="border-top: none" class="product">
          <%for(int i=0;i<1;i++){ 
          %>
            <div class="posts">
              <article>
                <a href="point_detail.jsp?Oid=<%=URLEncoder.encode(oid[i], "UTF-8")%>" class="image">
                   <img src="images/pic02.jpg" alt=""/>
                </a>
                <h3><%=orgDAO.getName(oid[i])%></h3>
                <p><%=pointDAO.gotpoint(oid[i])%>점이 필요합니다. </p>
              </article>         <%} %>

       
          	


              <article>
                <a href="corpDetail.jsp" class="image">
                   <img src="images/pic02.jpg" alt=""/>
                </a>
                <h3>단체</h3>
                <p>내용</p>
              </article>

              <article>
                <a href="corpDetail.jsp" class="image">
                   <img src="images/pic02.jpg" alt=""/>
                </a>
                <h3>단체</h3>
                <p>내용</p>
              </article>

              <article>
                <a href="corpDetail.jsp" class="image">
                   <img src="images/pic02.jpg" alt=""/>
                </a>
                <h3>단체</h3>
                <p>내용</p>
              </article>

              <article>
                <a href="corpDetail1.jsp" class="image">
                   <img src="images/pic02.jpg" alt=""/>
                </a>
                <h3>단체</h3>
                <p>내용</p>
              </article>

            
              <article>
                <a href="corpDetail1.jsp" class="image">
                   <img src="images/pic02.jpg" alt=""/>
                </a>
                <h3>단체</h3>
                <p>내용</p>
              </article>
            </div>
          </section>

          <section style="border-top: none" class="talent">
            <div class="posts">
            
              <article>
                <a href="corpDetail1.jsp" class="image">
                   <img src="images/pic02.jpg" alt=""/>
                </a>
                <h3>단체</h3>
                <p>재능</p>
              </article>

              <article>
                <a href="corpDetail.jsp" class="image">
                   <img src="images/pic02.jpg" alt=""/>
                </a>
                <h3>단체</h3>
                <p>내용</p>
              </article>

              <article>
                <a href="corpDetail.jsp" class="image">
                   <img src="images/pic02.jpg" alt=""/>
                </a>
                <h3>단체</h3>
                <p>내용</p>
              </article>
              
              <article>
                <a href="corpDetail.jsp" class="image">
                   <img src="images/pic02.jpg" alt=""/>
                </a>
                <h3>단체</h3>
                <p>내용</p>
              </article>

              <article>
                <a href="corpDetail.jsp" class="image">
                   <img src="images/pic02.jpg" alt=""/>
                </a>
                <h3>단체</h3>
                <p>내용</p>
              </article>

              <article>
                <a href="corpDetail.jsp" class="image">
                   <img src="images/pic02.jpg" alt=""/>
                </a>
                <h3>단체</h3>
                <p>내용</p>
              </article>
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
                              <li><a href="review.jsp">후기 작성</a></li>
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