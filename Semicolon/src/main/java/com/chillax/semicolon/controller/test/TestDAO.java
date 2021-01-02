package com.chillax.semicolon.controller.test;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("testDAO")
public class TestDAO {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public int getMain() {
		return sqlSessionTemplate.selectOne("testMapper.getMain");
	}
	
	
}
