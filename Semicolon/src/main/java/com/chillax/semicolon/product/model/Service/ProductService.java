package com.chillax.semicolon.product.model.Service;

import java.util.ArrayList;

import com.chillax.semicolon.product.model.vo.Image;
import com.chillax.semicolon.product.model.vo.Product;
import com.chillax.semicolon.product.model.vo.ProductCategory;

public interface ProductService {

	ArrayList<Product> getProductListAll();

	int getListCountAll();

	ArrayList<ProductCategory> getProductCategoryAll();

	int insertProduct(Product pr);
	
	int insertImage(ArrayList<Image> filenameList);

	Product selectProduct(int pr_no);

	ArrayList<String> selectProductImages(int pr_no);

	int updateProductCount(int pr_no);

	int deleteProduct(int pr_no);


		
}
