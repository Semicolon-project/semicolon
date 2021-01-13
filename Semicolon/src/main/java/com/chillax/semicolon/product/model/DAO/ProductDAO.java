package com.chillax.semicolon.product.model.DAO;

import java.util.ArrayList;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.chillax.semicolon.product.model.vo.Image;
import com.chillax.semicolon.product.model.vo.Product;
import com.chillax.semicolon.product.model.vo.ProductCategory;

@Repository("productDAO")
public class ProductDAO {

	public ArrayList<Product> getProductListAll(SqlSessionTemplate sqlSessionTemplate) {
		return (ArrayList)sqlSessionTemplate.selectList("productMapper.getProductListAll");
	}

	public int getListCountAll(SqlSessionTemplate sqlSessionTemplate) {
		return sqlSessionTemplate.selectOne("productMapper.getListCountAll");
	}

	public ArrayList<ProductCategory> getProductCategoryAll(SqlSessionTemplate sqlSessionTemplate) {
		return (ArrayList)sqlSessionTemplate.selectList("productMapper.getProductCategoryAll");
	}


	public int insertProduct(SqlSessionTemplate sqlSessionTemplate, Product pr) {
		return sqlSessionTemplate.insert("productMapper.insertProduct", pr);
	}

	public int insertImage(SqlSessionTemplate sqlSessionTemplate, ArrayList<Image> filenameList) {
		return sqlSessionTemplate.insert("productMapper.insertImage", filenameList);
	}

	public Product selectProduct(SqlSessionTemplate sqlSessionTemplate, int pr_no) {
		return sqlSessionTemplate.selectOne("productMapper.selectProduct", pr_no);
	}

	public ArrayList<String> selectProductImages(SqlSessionTemplate sqlSessionTemplate, int pr_no) {
		return (ArrayList)sqlSessionTemplate.selectList("productMapper.selectProductImages", pr_no);
	}

	public int updateProductCount(SqlSessionTemplate sqlSessionTemplate, int pr_no) {
		return sqlSessionTemplate.update("productMapper.updateProductCount", pr_no);
	}

	public int deleteProduct(SqlSessionTemplate sqlSessionTemplate, int pr_no) {
		return sqlSessionTemplate.update("productMapper.deleteProduct", pr_no);
	}
}
