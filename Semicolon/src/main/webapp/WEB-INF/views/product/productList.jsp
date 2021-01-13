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

<div class="container" id="product_div">
	
	<div id="listHeader">
		<select>
			<option>망월동</option>
			<option>내 동네 설정</option>
		</select>
		
		<div id="icon_div">
			<a href="writeForm.pr"><span class="write_icon icon" ></span></a>
		</div>
	</div>
	<!-- 상품 리스트 -->
	<div class="row product-row">
	
	<c:if test="${empty productList}">
				등록된 상품이 없습니다.
	</c:if>
	
	<c:if test="${!empty productList }">
		<c:forEach var="product" items="${productList }">
			<div class="col-sm-6 col-md-3">
			<div class="product_thumnail" onclick="goDetail(${product.pr_no})" style="background-image: url('/images/uploadFolder/${product.img_name}');"></div>
			<div class="product_info">
				<div>${product.pr_title }</div>
				<div>${product.pr_price } 원</div>
				<div><%-- ${product.pr_address} --%></div>
				<div>
					<div><span>좋아요 ${product.pr_like } . 채팅 40</span></div>
					<div><span class="icon like_icon"></span></div>
				</div>
			</div>
		</div>
		</c:forEach>
	</c:if>
	
	</div>
	<!-- 상품 리스트 -->
	<!-- 페이징 -->
	<nav>
	  <ul class="paging">
	    <li class="page_move_selector page_previous">&laquo;</li>
	    <li>1</li>
	    <li>2</li>
	    <li>3</li>
	    <li>4</li>
	    <li>5</li>
	    <li class="page_move_selector page_next">&raquo;</li>
	  </ul> 
	 </nav>
	  <!-- 페이징 끝 -->
</div>



<script type="text/javascript">
window.onload= function(){
	var th = document.getElementsByClassName("product_thumnail");
	th.onclick= function(){
		console.log(this);
	};

	console.log("${productList}");
};

function goDetail(pr_no){
	location.href="detail.pr?pr_no="+pr_no;
}


</script>
<c:import url="../common/footer.jsp" />
</body>
</html>