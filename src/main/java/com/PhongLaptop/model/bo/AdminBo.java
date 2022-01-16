package com.PhongLaptop.model.bo;

import com.PhongLaptop.model.bean.AdminBean;
import com.PhongLaptop.model.dao.AdminDao;

public class AdminBo {
	AdminDao addao = new AdminDao();
	public AdminBean Login(String TenDangNhap, String MatKhau) throws Exception {
		return addao.Login(TenDangNhap, MatKhau);
	}
}
