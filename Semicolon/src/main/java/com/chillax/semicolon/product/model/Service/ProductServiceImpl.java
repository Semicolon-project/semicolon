package com.chillax.semicolon.product.model.Service;

import java.util.ArrayList;
import org.apache.ibatis.jdbc.SQL;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chillax.semicolon.product.model.DAO.ProductDAO;
import com.chillax.semicolon.product.model.vo.Image;
import com.chillax.semicolon.product.model.vo.Product;
import com.chillax.semicolon.product.model.vo.ProductCategory;

@Service("productService")
public class ProductServiceImpl implements ProductService {
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	@Override
	public ArrayList<Product> getProductListAll() {
		return productDAO.getProductListAll(sqlSessionTemplate);
	}

	@Override
	public int getListCountAll() {
		return productDAO.getListCountAll(sqlSessionTemplate);
	}

	@Override
	public ArrayList<ProductCategory> getProductCategoryAll() {
		return productDAO.getProductCategoryAll(sqlSessionTemplate);
	}

	@Override
	public int insertProduct(Product pr) {
		return productDAO.insertProduct(sqlSessionTemplate, pr);
	}
	
	@Override
	public int insertImage(ArrayList<Image> filenameList) {
		return productDAO.insertImage(sqlSessionTemplate, filenameList);
	}

	@Override
	public Product selectProduct(int pr_no) {
		return productDAO.selectProduct(sqlSessionTemplate, pr_no);
	}

	@Override
	public ArrayList<String> selectProductImages(int pr_no) {
		return productDAO.selectProductImages(sqlSessionTemplate, pr_no);
	}

	@Override
	public int updateProductCount(int pr_no) {
		return productDAO.updateProductCount(sqlSessionTemplate, pr_no);
	}

	@Override
	public int deleteProduct(int pr_no) {
		return productDAO.deleteProduct(sqlSessionTemplate, pr_no);
	}

}
