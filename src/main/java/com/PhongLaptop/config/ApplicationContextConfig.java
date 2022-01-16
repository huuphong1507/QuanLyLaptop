package com.PhongLaptop.config;

import javax.sql.DataSource;

import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.PhongLaptop.model.bean.AdminBean;
import com.PhongLaptop.model.bean.ChiTietHoaDonBean;
import com.PhongLaptop.model.bean.GioHangBean;
import com.PhongLaptop.model.bean.HoaDonBean;
import com.PhongLaptop.model.bean.KhachHangBean;
import com.PhongLaptop.model.bean.LaptopBean;
import com.PhongLaptop.model.bean.LichSuBean;
import com.PhongLaptop.model.bean.LoaiBean;

@Configuration
@ComponentScan("com.PhongLaptop.*")
public class ApplicationContextConfig extends WebMvcConfigurerAdapter {
	@Bean(name = "viewResolver")
	public InternalResourceViewResolver getViewResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setPrefix("/WEB-INF/view/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;
	}

	
	@Bean
	public LaptopBean laptopbean() {
		return new LaptopBean();
	}

	@Bean
	public LoaiBean loaibean() {
		return new LoaiBean();
	}

	@Bean
	public KhachHangBean khachhangbean() {
		return new KhachHangBean();
	}

	@Bean
	public HoaDonBean hoadonbean() {
		return new HoaDonBean();
	}

	@Bean
	public ChiTietHoaDonBean chitiethoadonbean() {
		return new ChiTietHoaDonBean();
	}

	@Bean
	public GioHangBean giohangbean() {
		return new GioHangBean();
	}

	@Bean
	public LichSuBean lichsubean() {
		return new LichSuBean();
	}

	@Bean
	public AdminBean adminbean() {
		return new AdminBean();
	}
}
