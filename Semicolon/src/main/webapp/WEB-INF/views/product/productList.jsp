<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/product/productList.css"> 
</head>
<body>
<c:import url="../common//header.jsp" />

<div class="container">
	<div id="listHeader">
		<select>
			<option>망월동</option>
			<option>내 동네 설정</option>
		</select>
	</div>

	<div class="row product-row">
		<div class="col-sm-6 col-md-3">
			<div class="product_thumnail" style="background-image: url('/images/uploadFolder/sample_image1.jpg');"></div>
			<div class="product_info">
				<div>캠핑난로 신일팬히터 팝니다</div>
				<div>150,000원</div>
				<div>경기도 하남시 망월동</div>
				<div>
					<div><span>좋아요 11 . 채팅 40</span></div>
					<div><span class="icon like_icon"></span></div>
				</div>
			</div>
		</div>
		<div class="col-sm-6 col-md-3">
			<div class="product_thumnail" style="background-image: url('/images/uploadFolder/sample_image1.jpg');"></div>
			<div class="product_info">
				<div>캠핑난로 신일팬히터 팝니다</div>
				<div>150,000원</div>
				<div>경기도 하남시 망월동</div>
				<div>
					<div><span>좋아요 11 . 채팅 40</span></div>
					<div><span class="icon like_icon"></span></div>
				</div>
			</div>
		</div>
		<div class="col-sm-6 col-md-3">
			<div class="product_thumnail" style="background-image: url('/images/uploadFolder/sample_image1.jpg');"></div>
			<div class="product_info">
				<div>캠핑난로 신일팬히터 팝니다</div>
				<div>150,000원</div>
				<div>경기도 하남시 망월동</div>
				<div>
					<div><span>좋아요 11 . 채팅 40</span></div>
					<div><span class="icon like_icon"></span></div>
				</div>
			</div>
		</div>
		<div class="col-sm-6 col-md-3">
			<div class="product_thumnail" style="background-image: url('/images/uploadFolder/sample_image1.jpg');"></div>
			<div class="product_info">
				<div>캠핑난로 신일팬히터 팝니다</div>
				<div>150,000원</div>
				<div>경기도 하남시 망월동</div>
				<div>
					<div><span>좋아요 11 . 채팅 40</span></div>
					<div><span class="icon like_icon"></span></div>
				</div>
			</div>
		</div>
	</div>
	
		<div class="row product-row">
		<div class="col-sm-6 col-md-3">
			<div class="product_thumnail" style="background-image: url('/images/uploadFolder/sample_image1.jpg');"></div>
			<div class="product_info">
				<div>캠핑난로 신일팬히터 팝니다</div>
				<div>150,000원</div>
				<div>경기도 하남시 망월동</div>
				<div>
					<div><span>좋아요 11 . 채팅 40</span></div>
					<div><span class="icon like_icon"></span></div>
				</div>
			</div>
		</div>
		<div class="col-sm-6 col-md-3">
			<div class="product_thumnail" style="background-image: url('/images/uploadFolder/sample_image1.jpg');"></div>
			<div class="product_info">
				<div>캠핑난로 신일팬히터 팝니다</div>
				<div>150,000원</div>
				<div>경기도 하남시 망월동</div>
				<div>
					<div><span>좋아요 11 . 채팅 40</span></div>
					<div><span class="icon like_icon"></span></div>
				</div>
			</div>
		</div>
		<div class="col-sm-6 col-md-3">
			<div class="product_thumnail" style="background-image: url('/images/uploadFolder/sample_image1.jpg');"></div>
			<div class="product_info">
				<div>캠핑난로 신일팬히터 팝니다</div>
				<div>150,000원</div>
				<div>경기도 하남시 망월동</div>
				<div>
					<div><span>좋아요 11 . 채팅 40</span></div>
					<div><span class="icon like_icon"></span></div>
				</div>
			</div>
		</div>
		<div class="col-sm-6 col-md-3">
			<div class="product_thumnail" style="background-image: url('/images/uploadFolder/sample_image1.jpg');"></div>
			<div class="product_info">
				<div>캠핑난로 신일팬히터 팝니다</div>
				<div>150,000원</div>
				<div>경기도 하남시 망월동</div>
				<div>
					<div><span>좋아요 11 . 채팅 40</span></div>
					<div><span class="icon like_icon"></span></div>
				</div>
			</div>
		</div>
	</div>
	</div>
</div>
<script type="text/javascript">
window.onload= function(){
	var th = document.getElementsByClassName("product_thumnail");
	console.log(th);
	th.onclick= function(){
		console.log(this);
	};
};

function goDetail(){
	location.href="detail.pr";
}


</script>
<c:import url="../common/footer.jsp" />
</body>
</html>