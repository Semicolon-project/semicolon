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
<div id="product_images_slide" class="">
<!-- 사진 슬라이더 -->
<ul id="slide_track">
		<c:forEach var='image' items="${imgList }">
			<li class="product_image">
			<a href="/images/uploadFolder/${image }" style="background-image: url('/images/uploadFolder/${image }');"></a>
		</li>
		</c:forEach>
</ul>
<!-- 사진 슬라이더 버튼  -->
<c:if test="${imgList.size() > 1 }">
<div id="slide_move_btns">
	<span class="back_icon icon"></span>
	<span class="next_icon icon"></span>
</div>
</c:if>
</div>
<div id="product_seller_profile" class="container">
	<div id="product_profile_image">
		<img src="/images/profile_none.png">
	</div>
	<div id="product_profile_content">
		<div id="nickname">${product.mem_id }</div>
		<div id="address">동구 율하동</div>
	</div>
	<div id="btns_div">
		<div id="update_btn">글수정</div>
		<div id="delete_btn">글삭제</div>
	</div>
</div>
<div id="product_info" class="container">
	<div id="product_title">${product.pr_title }</div>
	<div id="product_category"><span>${product.pr_category } . </span> <span>5시간 전</span></div>
	<div id="product_price">${product.pr_price }원</div>
	<div id="product_content">${product.pr_content }</div>
	<div id="product_count"><span>채팅 41 . </span> <span>관심 ${product.pr_like } . </span> <span>조회 ${product.pr_count }</span></div>
</div>
<div id=""></div>
</section>
<script type="text/javascript">
var currImg = 0;
var imgLength = ${imgList.size()}-1; // 사진2장이면 1, 사진 3장이면 2
$(function(){
	$("#update_btn").click(function(){
		location.href="updateForm.pr?pr_no=${product.pr_no}";
	});
	$("#delete_btn").click(function(){
		location.href="delete.pr?pr_no=${product.pr_no}";
	});
	$('.next_icon').click(function(){
		if(currImg<imgLength){
			$('#slide_track').find('li').css("transform","translateX("+(-700*(currImg+1))+"px)");	
			currImg++;	
		}else{
			$('#slide_track').find('li').css("transform","translateX(0px)");	
			currImg=0;	
		}
	});
	$(".back_icon").click(function(){
		if(currImg<1){
			$('#slide_track').find('li').css("transform","translateX("+(-700*imgLength)+"px)");	
			currImg=imgLength;
		}else{
			$('#slide_track').find('li').css("transform","translateX("+(-700*(imgLength-1))+"px)");	
			currImg--;
		}
	});		
});
</script>
<c:import url="../common/footer.jsp" />
</body>
</html>