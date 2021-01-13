package com.chillax.semicolon.product;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.swing.filechooser.FileSystemView;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.chillax.semicolon.product.model.Service.ProductService;
import com.chillax.semicolon.product.model.vo.Image;
import com.chillax.semicolon.product.model.vo.Product;
import com.chillax.semicolon.product.model.vo.ProductCategory;

@Controller
public class ProductController {
	@Autowired
	ProductService productService;
	
	@RequestMapping("list.pr")
	public ModelAndView goProductList(ModelAndView mv) {
		
		int listCount = productService.getListCountAll();
		ArrayList<Product> productList =  productService.getProductListAll();
		mv.addObject("productList", productList);
		mv.addObject("listCount", listCount);
		mv.setViewName("/product/productList");
		return mv;
	}
	
	@RequestMapping("detail.pr")
	public ModelAndView goProductDetail(@RequestParam("pr_no") int pr_no, ModelAndView mv) {
		int result = productService.updateProductCount(pr_no);
		if(result>0){
			Product product = productService.selectProduct(pr_no);
			ArrayList<String> imgList  = productService.selectProductImages(pr_no);
			mv.addObject("product", product)
			.addObject("imgList", imgList)
			.setViewName("/product/productDetail");	
		}
		return mv;
	}
	
	@RequestMapping("writeForm.pr")
	public ModelAndView goProductWrtieView(ModelAndView mv){
		ArrayList<ProductCategory> productCategory = productService.getProductCategoryAll();
		mv.addObject("productCategory", productCategory);
		mv.setViewName("/product/productWrite");
		return mv;
	}
	
	@RequestMapping("write.pr")
	public String writeProduct(Product pr, HttpServletRequest request,
			@RequestParam("uploadImg1") MultipartFile img1,
			@RequestParam("uploadImg2") MultipartFile img2,
			@RequestParam("uploadImg3") MultipartFile img3) throws IllegalStateException, IOException {
		//게시글 insert
		int resultProduct = productService.insertProduct(pr);
		
		if(resultProduct > 0) {
			ArrayList<MultipartFile> imgList = new ArrayList<MultipartFile>();
			imgList.add(img1);
			imgList.add(img2);
			imgList.add(img3);
			// 파일 저장
			ArrayList<Image> filenameList = saveFiles(imgList, request);
			if(filenameList != null) {
				// 파일 정보 DB insert
				int resultImage =productService.insertImage(filenameList);
				if(resultImage>0) {
					return "redirect:list.pr"; // 모든 정보 insert 성공
				}else {
					return "redirect:error"; // 이미지 정보 DB insert 실패
				}
			}else {
				return "redirect:error"; // 이미지 정보 return 받지 못한 경우 
			}
			
		}else {
			return "redirect:error"; // 게시글 insert 실패
		}
	}
	
	// 업로드된 파일을 저장하는 메서드
	public ArrayList<Image> saveFiles(ArrayList<MultipartFile> imgList, HttpServletRequest request) throws IllegalStateException, IOException {
		String rootPath = request.getServletContext().getRealPath("").substring(0, request.getServletContext().getRealPath("").lastIndexOf("webapp"));
		String basePath = rootPath+"resources/static/images/uploadFolder";
		ArrayList<Image> filenameList = new ArrayList<Image>();
		int count=0;  // 저장된 이미지 개수
		
		// 업로드할 폴더가 없으면 만들기
		File folder = new File(basePath);
		if(!folder.exists()) {
			folder.mkdirs();
		}
	
		//이미지 저장
		int index = 0; // 아래 for문의 index
		for(MultipartFile image: imgList) {
			if(!image.getOriginalFilename().equals("")) {
				System.out.println(image.getOriginalFilename());
				String originFileName= image.getOriginalFilename();
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
				String filename=sdf.format(new Date(System.currentTimeMillis()))+String.valueOf(index)+"."+originFileName.substring(originFileName.lastIndexOf(".")+1);
				
				image.transferTo(new File(basePath+"/"+filename));
				
				filenameList.add(new Image(0, filename, count==0 ? 0:1 , null, 0));
				count++;
				index++;
			}
		}
		if(count>0) {
			return filenameList;
		}else {
			return null;
		}
	}
	
	
	@RequestMapping("updateForm.pr")
	public ModelAndView goUpdateView(@RequestParam("pr_no") int pr_no, ModelAndView mv) {
		Product product = productService.selectProduct(pr_no);
		ArrayList<String> imgList  = productService.selectProductImages(pr_no);
		ArrayList<ProductCategory> productCategory = productService.getProductCategoryAll();
		mv.addObject("product", product)
		.addObject("imgList", imgList)
		.addObject("productCategory", productCategory)
		.setViewName("/product/productUpdate");
		return mv;
	}
	
	@RequestMapping("update.pr")
	public void updateProduct(Product pr, HttpServletRequest request,
			@RequestParam("uploadImg1") MultipartFile img1,
			@RequestParam("uploadImg2") MultipartFile img2,
			@RequestParam("uploadImg3") MultipartFile img3) {
		
	}
	
	@RequestMapping("delete.pr")
	public String deleteProduct(@RequestParam("pr_no") int pr_no) {
		int result = productService.deleteProduct(pr_no);
		if(result>0) {
			return "redirect:list.pr";
		}else {
			return "redirect:error";
		}
	}
	
	///////////////////////////////////
	
	@RequestMapping("login.me")
	public String goLoginView() {
		return "/member/login";
	}
	
}
