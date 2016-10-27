package com.example.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

//SpringMvc에 대한 설정
@Configuration
@ComponentScan(basePackages = { "com.example.controller" })
@EnableWebMvc // <mvc:annotation-driven />
public class MvcConfig extends WebMvcConfigurerAdapter {

	@Bean
	public ViewResolver internalResourceViewResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/view/");
		resolver.setSuffix(".jsp");
		return resolver;
	}
	@Bean
	public CommonsMultipartResolver multipartResolver(){
		CommonsMultipartResolver resolver = new CommonsMultipartResolver();
		resolver.setDefaultEncoding("utf-8");
		resolver.setMaxUploadSize(1024*1024*20);
		return resolver;
	}
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/css/**").addResourceLocations("WEB-INF/css/");
		registry.addResourceHandler("/js/**").addResourceLocations("WEB-INF/view/js/");
		registry.addResourceHandler("/jsp/**").addResourceLocations("WEB-INF/view/jsp/");
		registry.addResourceHandler("/img/**").addResourceLocations("WEB-INF/css/images/");
		registry.addResourceHandler("/upload/**").addResourceLocations("WEB-INF/upload/");
		registry.addResourceHandler("/bxslider/**").addResourceLocations("WEB-INF/view/");
		registry.addResourceHandler("/videoback/**").addResourceLocations("WEB-INF/view/videobackground/");
		registry.addResourceHandler("/slidepro/**").addResourceLocations("WEB-INF/view/sliderpro/");
		registry.addResourceHandler("/daumeditor/**").addResourceLocations("WEB-INF/view/daumeditor/");
		registry.addResourceHandler("/ProfileAction/**").addResourceLocations("WEB-INF/view/jsp/ProfileAction/");
	
	}
	
}
