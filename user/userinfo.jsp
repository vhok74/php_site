<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="my.eclass.Domain.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
			
			<!-- Base css -->
			<link rel="stylesheet" href="${pageContext.request.contextPath}/css/normalize.css"> 
			<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css"> 
			
			<!-- page css -->
			<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
			<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
			<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

			<title>이클립스 개인 페이지</title>
	</head>
	<body>
		<div id="wrap">
			<div id="header">
				<%@ include file="../include/header.jsp" %>
			</div>
			<!-- header -->
			<div id="contents-sign">
				<div id="cont-nav">
					<%@ include file="../include/nav.jsp" %>
				</div>
				<div id="sign">
		        <br><br>
		        
		        <div style="text-align:center;">
		        	<font size="6" color="gray">회원정보</font>
		        </div>
		        <br><br>
		        
		        <form action="/jungjaeho_free/UserServlet" method="post">
		  
		            <table class="sign-table">
		                <tr>
		                    <td id="title">아이디</td>
		                    <td>
		          
		                        <input type="text" name="id" maxlength="20" value="${sessionScope.user.getUserID()}" disabled>
		                    </td>
		                </tr>
		                        
		                <tr>
		                    <td id="title">비밀번호</td>
		                    <td>
		                        <input type="password" value="${sessionScope.user.getUserPasswd()}" name="password" maxlength="15">
		                    </td>
		                </tr>
		                
		                <tr>
		                </tr>
		                    
		                <tr>
		                    <td id="title">이름</td>
		                    <td>
		                        <input type="text" value="${ sessionScope.user.getUserName()}" name="name" maxlength="40">
		                    </td>
		                </tr>
		                    
		                <tr>
		                    <td id="title">성별</td>
		                    <td>
		                        <input type="radio" name="gender" value="남" checked>남
		                        <input type="radio" name="gender" value="여" checked>여
		                    </td>
		                </tr>
		                    
		                <tr>
		                    <td id="title">생일</td>
		                    <td>
		                        <input type="text" name="birth" value="${sessionScope.user.getUserBirth()}" maxlength="6" placeholder="년(6자)" size="6" >		             
		                    </td>
		                </tr>
		                    
		                <tr>
		                    <td id="title">이메일</td>
		                    <td>
		                        <input type="text" name="email"  value="${sessionScope.user.getUserEmail()}" maxlength="30">	                      
		                    </td>
		                </tr>
		                <tr>
		                    <td id="title">주소</td>
		                    <td>
		                        <input type="text" value="${sessionScope.user.getUserHome()}" size="50" name="address"/>
		                    </td>
		                </tr>
		            </table>
		            <br>
		             <table class="sign-table2">
		                <tr>
		                    <td id="title">1학년</td>
		                    <td>
		                        <input type="text" name="1-1" value="${sessionScope.user.getScore_F_F()}" maxlength="10" placeholder="1학기 총 학점">  
		                        
		                    </td>
		                     <td>
		                        <input type="text" name="1-2" value="${sessionScope.user.getScore_F_S()}" maxlength="10" placeholder="2학기 총 학점">  
		                    </td>
		                </tr>
		                        
		                <tr>
		                    <td id="title">2학년</td>
		                    <td>
		                        <input type="text" name="2-1" value="${sessionScope.user.getScore_S_F()}" maxlength="15" placeholder="1학기 총 학점">
		                    </td>
		                     <td>
		                        <input type="text" name="2-2" value="${sessionScope.user.getScore_S_S()}" maxlength="10" placeholder="2학기 총 학점">  
		                    </td>
		                </tr>
		                
		                <tr>
		                    <td id="title">3학년</td>
		                    <td>
		                        <input type="text" name="3-1" value="${sessionScope.user.getScore_T_F()}" maxlength="15" placeholder="1학기 총 학점">
		                    </td>
		                     <td>
		                        <input type="text" name="3-2" value="${sessionScope.user.getScore_T_S()}" maxlength="10" placeholder="2학기 총 학점">  
		                    </td>
		                </tr>
		                    
		                <tr>
		                    <td id="title">4학년</td>
		                    <td>
		                        <input type="text" name="4-1" value="${sessionScope.user.getScore_FF_F()}" maxlength="40" placeholder="1학기 총 학점">
		                    </td>
		                     <td>
		                        <input type="text" name="4-2" value="${sessionScope.user.getScore_FF_S()}" maxlength="10" placeholder="2학기 총 학점">  
		                    </td>
		                </tr>
		             </table>
		             <div class="reset_sign" style="text-align:center;">
			           	 <input type="submit" name="key" value="수정"/>
			           	 <a href="/jungjaeho_free/UserServlet?key=cancel">취소</a>
			           	 <a href="/jungjaeho_free/UserServlet?key=delete">회원탈퇴</a>
		            </div>
		        </form>
		   		</div>
			</div>
			<!-- contents -->
			<div id="footer">
	     		<%@include file="../include/footer.jsp" %>
			</div>
		</div>	
		<!-- wrap -->
    	<script type="text/javascript" src="js/imgslide.js"></script>
	</body>
</html>