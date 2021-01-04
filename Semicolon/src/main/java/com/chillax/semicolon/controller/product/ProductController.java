package com.chillax.semicolon.controller.product;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {

	@RequestMapping("list.pr")
	public String goProductList() {
		return "/product/productList";
	}
	
	@RequestMapping("detail.pr")
	public String goProductDetail() {
		return "/product/productDetail";
	}
}
