<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세미콜론</title>

<!-- jQuery 첨부 -->
<script src="/js/jquery-3.5.1.min.js"></script>
<!-- Modal코드  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<!-- 부트스트랩 첨부 시작 -->
  <!-- Bootstrap core CSS -->
  <link rel="stylesheet" type="text/css" href="/vendor/bootstrap/css/bootstrap.css">

  <!-- Custom fonts for this template -->
  <link rel="stylesheet" type="text/css" href="/vendor/fontawesome-free/css/all.min.css">
  <link rel="stylesheet" type="text/css" href="/vendor/simple-line-icons/css/simple-line-icons.css">
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
  
  <!-- Custom styles for this template -->
  <link rel="stylesheet" type="text/css" href="/css/landing-page.css">
  <link rel="stylesheet" type="text/css" href="/css/landing-page.min.css">
<!-- 부트스트랩 첨부 끝 -->
<!-- 경로는 스프링부트 기준에서 src/main/resources/static/ 이다 -->
<link rel="stylesheet" href="/css/header.css">

</head>
<body>
<!-- 메뉴바는 어느 페이지든 포함하고 있을 테니 여기서 contextPath 변수 값 만들기  -->

  
  <!-- Navigation -->
  <nav class="navbar navbar-light bg-light static-top">
    <div class="container">
      <a class="navbar-brand" onclick="main()">;세미콜론[로고]</a>
     <div>
      	<a class="menu_right" href="#login">로그인</a>
    	<a class="menu_right" href="join()">회원가입</a>
      </div>      
    </div>
  </nav>



<!-- 모달 -->
        <!-- 로그인 창  -->
		<div id="login" class="modal">
		    <div id="login_spaceStart"></div>
			<p id="loginLabel">LOGIN</p>
			<div id="login_space4"></div>
			<div id="loginDiv">
			<div id="idPwdDiv">
			<div id="idIconDiv"><i class="fas fa-user-circle" id="idIcon"></i></div>
	        <input type="text" id="loginInfo_1" class="loginInfo" name="memberId" placeholder="아이디를 입력해주세요"
	         onfocus="this.placeholder=''" onblur="this.placeholder='아이디를 입력해주세요'" autocomplete="off" ></div>	         
	        <div id="login_space1"></div>
	        <div id="idPwdDiv">
	        <div id="pwdIconDiv"><i class="fas fa-lock" id="pwdIcon"></i></div>
	        <input type="password" id="loginInfo_2" name="memberPwd" class="loginInfo" placeholder="비밀번호를 입력해주세요"
	         onfocus="this.placeholder=''" onblur="this.placeholder='비밀번호를 입력해주세요'" autocomplete="off"></div>
	         </div>
	    <div id="login_space2"></div>
	    
	    <!-- 아이디 저장  -->
	    <div id="idSave_1">
	        <input type="checkbox" id="idSave_2" name="remember" value="1">
	        <label for="idSave_2" id="idSave_3">아이디 저장</label>
	    </div>
	    <div id="idSave_4"></div>
	    
	    <!-- 버튼  -->
	    <div id="loginDiv">
	        <button id="loginButton">로그인</button>
	        <div id="login_space2"></div>
	        <div id="login_space3">
	            <label class="search" onclick="searchId()" onMouseOver="this.style.color='#77af82';"
							onMouseOut="this.style.color=''">아이디 찾기</label>
	            <label>&nbsp;|&nbsp;</label>
	            <label class="search" onclick="searchId()" onMouseOver="this.style.color='#77af82';"
							onMouseOut="this.style.color=''">비밀번호 찾기</label>
	            <label>&nbsp;|&nbsp;</label>
	            <label class="search" onclick="join();" onMouseOver="this.style.color='#77af82';"
							onMouseOut="this.style.color=''">회원가입</label>
	        </div>
	    </div>   
	    <div>
	        <div id="otherBtn">
	            <div id="otherSpace"></div>
                <div id="otherLogin_space"></div>
                <div id="loginButton2" onclick="location.href='https://kauth.kakao.com/oauth/authorize?client_id=9d8f7f524c07ea08ff127d7591c2fbd5&redirect_uri=http://localhost:13080/reap/kakaoLogin.me&response_type=code'">
                <i class="fas fa-comment" id="btn2_1"></i>
	            <a id="btn2_2">카카오 계정으로 로그인</a>
	            </div>	            
	        
	        <div id="login_space5"></div>

                <div id="loginButton3" onclick="location.href='https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=7SqOY7uotfJIREqGVR6P&redirect_uri=http://localhost:13080/reap/naverLogin.me&state=1162353973'">
                <i class="fab fa-neos" id="btn3_1"></i>
	            <a id="btn3_2">네이버 계정으로 로그인</a>
	            </div>	            
	        </div>
	            
	        <div id="login_spaceFoot"></div>
		</div>
		</div>



<script>
function main(){
	location.href="<%= request.getContextPath() %>";
}

<%-- function login(){
	location.href="<%= request.getContextPath() %>/login.me"; 페이지 넘기지 말고 현재창에서 모달로 띄우기
} --%>

function join(){
	location.href="<%= request.getContextPath() %>/join.me";
}
</script>  
</body>
</html>