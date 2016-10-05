package com.example.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

//SpringMvc에 대한 설정
@Configuration
@ComponentScan("com.example.controller")
@EnableWebMvc //<mvc:annotation-driven />
public class MvcConfig extends WebMvcConfigurerAdapter{

	
	@Bean
	public ViewResolver internalResourceViewResolver(){
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/view/");
		resolver.setSuffix(".jsp");
		return resolver;
	}
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/css/**")
		.addResourceLocations("WEB-INF/css/");	
		registry.addResourceHandler("/js/**")
		.addResourceLocations("WEB-INF/view/js/");	
		registry.addResourceHandler("/jsp/**")
		.addResourceLocations("WEB-INF/view/jsp/");
	}
}
