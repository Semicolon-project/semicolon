<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/product/productDetail.css"> 
</head>
<body>
<c:import url="../common//header.jsp" />
<section>
<div id="product_images_slide" class="container-fluid">
	<div id="slide_track">
		<div class="current_image">
			<img src="/images/uploadFolder/sample_image1.jpg">
		</div>
		<div class="current_image">
			<img src="/images/uploadFolder/sample_image1.jpg">
		</div>
		<div class="current_image">
			<img src="/images/uploadFolder/sample_image1.jpg">
		</div>
	</div>
</div>
<div id="product_seller_profile" class="container">
	<div id="product_profile_image">
		<img src="/images/profile_none.png">
	</div>
	<div id="product_profile_left">
		<div id="nickname">포포맘</div>
		<div id="address">동구 율하동</div>
	</div>
</div>
<div id="product_info" class="container">
	<div id="product_title">캠핑난로 신일팬히터 팝니다</div>
	<div id="product_category"><span>스포츠/레저 .</span><span>5시간 전</span></div>
	<div id="product_price">150,000원</div>
	<div id="product_content">신일 팬히터 SFH-C904DMA 2018년 11월 31만원 정도에 구매하여 캠핑 2회 사용했습니다. 상태 양호하고 전용가방도 있습니다. 강아지랑 아이가 어려서 동계캠핑은 접으려고 내놓아요.</div>
	<div id="product_count"><span>채팅 41 . </span><span>관심 9 . </span><span>조회 572</span></div>
</div>
<div id=""></div>
</section>
<c:import url="../common/footer.jsp" />
</body>
</html>