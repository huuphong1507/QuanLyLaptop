package com.PhongLaptop.model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.PhongLaptop.model.bean.AdminBean;

public class AdminDao {
	public AdminBean Login(String TenDangNhap, String MatKhau) throws Exception {
		DungChung dc = new DungChung();
		dc.ketNoi();
    	
    	String sql = "select * from DangNhap\r\n"
    			+ "where TenDangNhap = ?\r\n"
    			+ "and MatKhau = ?" ;
    	PreparedStatement cmd = dc.cn.prepareStatement(sql);
		cmd.setString(1, TenDangNhap);
		cmd.setString(2, MatKhau);
		ResultSet rs = cmd.executeQuery();
		if (rs.next() == false) {
			return null;
		} else {
			AdminBean adbean = new AdminBean();
			adbean.setTenDangNhap(rs.getString("TenDangNhap"));
			adbean.setMatKhau(rs.getString("MatKhau"));
			return adbean;
		}
    }
}
