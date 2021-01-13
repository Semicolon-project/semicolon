<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/product/productWrite.css"> 
</head>
<body>
<c:import url="../common//header.jsp" />
<div class="container">
	<div id="product_write_div">
		<div id="write_head">중고거래 글쓰기</div>
		<form method="post" enctype="multipart/form-data" id="writeForm" action="write.pr" autocomplete="off">
			<div id="picture_div">
				<div class="row">
					<div class="each_picture col-sm-6 col-md-4" onclick="getImage(0)"><span>사진을 첨부하려면 클릭해주세요.</span><img ></div>
					<div class="each_picture col-sm-6 col-md-4" onclick="getImage(1)"><span>사진을 첨부하려면 클릭해주세요.</span><img ></div>
					<div class="each_picture col-sm-6 col-md-4" onclick="getImage(2)"><span>사진을 첨부하려면 클릭해주세요.</span><img ></div>
					<input type="file"  accept="jpg,png" name="uploadImg1" onchange="loadImg(this,0)">
					<input type="file"  accept="jpg,png" name="uploadImg2" onchange="loadImg(this,1)">	
					<input type="file"  accept="jpg,png" name="uploadImg3" onchange="loadImg(this,2)">
				</div>
			</div>
			<div class="input_div"><input type="text" placeholder="제목" name="pr_title" ></div>
			<div class="input_div" >
				<select name="pr_category">
						<option value="none" selected>카테고리</option>
					<c:forEach var="category" items="${productCategory }">
						<option value="${category.cate_code }">${category.cate_name}</option>
					</c:forEach>
				</select>
			</div>
			<div class="input_div"><input type="text" placeholder="₩ 가격 (원)" name="pr_price"></div>
			<div class="input_div"><textarea class="form-control" rows="3" placeholder="망월동에 올릴 게시글 내용을 적성해주세요. 가품 및 판매금지품목은 게시가 제한될 수 있어요." name="pr_content"></textarea></div>
			<div id="write_btn"><div><span class="write_icon icon"></span>작성완료</div></div>
		</form>
	</div>
</div>
<script type="text/javascript">
var pictureCount = 0;

$(function(){
	$('#each_picture1').click(function(){
		$('#thumbnailImg1').click();
	});

	$("#write_btn div").click(function(){
		validate();
	});
});
function getImage(num){
	$('#picture_div').find('input[type=file]').eq(num).click();
}

function loadImg(value,num){
	if(value.files && value.files[0]){
		var reader = new FileReader();
		reader.onload=function(e){
			$('.each_picture').find("img").eq(num).attr("src",e.target.result);		
			$('.each_picture').eq(num).find('span').text('');
			pictureCount++;	
		}
		reader.readAsDataURL(value.files[0]);
	}
}

function validate(){
	if(pictureCount==0){
		alert("사진을 1개 이상 첨부해주세요.");
	}
	$('#writeForm').submit();
}
</script>
<c:import url="../common/footer.jsp" />
</body>
</html>