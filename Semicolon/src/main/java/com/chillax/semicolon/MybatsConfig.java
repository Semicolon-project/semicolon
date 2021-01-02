package com.chillax.semicolon;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

@Configuration
public class MybatsConfig {
		@Bean
		public DataSource dataSource(Environment environment) {
			BasicDataSource dataSource = new BasicDataSource();
			
			dataSource.setDriverClassName("oracle.jdbc.driver.OracleDriver");
			dataSource.setUrl("jdbc:oracle:thin:@localhost:1521:xe");
			dataSource.setUsername("semicolon");
			dataSource.setPassword("semicolon");
			return dataSource;
		}
		
		@Bean
		public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception{
			SqlSessionFactoryBean sqlSessionFactory = new SqlSessionFactoryBean();
			
			sqlSessionFactory.setDataSource(dataSource);
			sqlSessionFactory.setMapperLocations(
					new PathMatchingResourcePatternResolver().getResources("classpath*:mapper/**/*.xml"));
			return (SqlSessionFactory)sqlSessionFactory.getObject();
		}
		
		@Bean 
		public SqlSessionTemplate sqlSession(SqlSessionFactory sqlSessionFactory) {
			return new SqlSessionTemplate(sqlSessionFactory);
		}
}
