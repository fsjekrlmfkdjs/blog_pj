package com.web.blog.configuration;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class MybatisConfig {

	@Bean
	public SqlSessionTemplate sqlSessionTemplate(
			SqlSessionFactory sqlSessionFactory)
					throws Exception{
		return new SqlSessionTemplate(sqlSessionFactory);
	}
	// SqlSessionTemplate : Mybatis쿼리문을 수행해주는 역할
}
