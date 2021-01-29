<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>세미콜론</title>
<!-- jQuery 첨부 -->
<script src="/js/jquery-3.5.1.min.js"></script>

<!-- 부트스트랩 첨부 시작 -->
  <!-- Bootstrap core CSS -->
  <link rel="stylesheet" type="text/css" href="/vendor/bootstrap/css/bootstrap.css"> 
  <script src="/vendor/bootstrap/js/bootstrap.js"></script>
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
<!-- 모달 -->

  <!-- Navigation -->
  <nav class="navbar navbar-light bg-light static-top">
    <div class="container">
      <a class="navbar-brand" onclick="main()">;세미콜론[로고]</a>
     <div>
      	<a class="menu_right" data-toggle="modal" data-target="#login">로그인</a>
    	<a class="menu_right" href="join()">회원가입</a>
      </div>      
    </div>
  </nav>
  
   <!-- 로그인 창  -->
		<div id="login" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
			<div id="login_container" class="modal-dialog">
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
	</div>
<!-- 모달 -->

<!-- 메시지 영역 -->
<!-- 메시지 버튼  -->
<a id="message_a"><span class="icon message_icon"></span></a>
<div id="div_message">
<div id="message1">
	<ul class="message_list">
		<li class="selected_message">이름1</li>
		<li>이름2</li>
	</ul> 
</div>
<div id="message2">
	<span class="icon close_icon"></span>
	<div>
		<div class="message_box">
			<ul class="your_message">
				<li class="msg_content"><span>선제시 ㄱㄱ</span></li>
				<li class="msg_time"><span>13:04</span></li>
			</ul>	
			<ul class="my_message">
				<li class="msg_content"><span>님이 먼저 ㄱㄱ</span></li>
				<li class="msg_time"><span>13:04</span></li>
			</ul>	
			<ul class="my_message">
				<li class="msg_content"><span>7.5?</span></li>
				<li class="msg_time"><span>13:04</span></li>
			</ul>	
			<ul class="your_message">
				<li class="msg_content"><span>ㅇㅋㅇㅋ</span></li>
				<li class="msg_time"><span>13:04</span></li>
			</ul>	
		</div>
		<form id="msg_form">
			<input type="text" id="msg_input"><input type="button" value="보내기" id="msg_btn">
		</form>
	</div>
</div>  
</div>
<!-- 메시지 영역 -->

<script>
$(function(){
	$('#div_message').on("click",".close_icon", function(){
		$("#div_message").css("bottom","-300px");
		$('#message_a').css("display","block");
	});
	$(document).on("click","#message_a", function(){
		$("#div_message").css("bottom","0px");
		$('#message_a').css("display","none");
	});
	$("#msg_form").on("click","#msg_btn", function(e){
		e.preventDefault();
		if($("#msg_input").val()==""){
			alert("내용을 입력해주세요.");
			$("#msg_input").focus();
		}else{
			$.ajax({
				url: "sendMsg",
				data: {"message":$('#msg_input').val()},
				success:function(data){
					alert("성공:"+data);
				},
				error:function(data){
					alert("ajax 통신 에러")
				}
			});
		}
	});
});
function main(){
	location.href="/";
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