package com.PhongLaptop.model.bo;

import com.PhongLaptop.model.bean.KhachHangBean;
import com.PhongLaptop.model.dao.KhachHangDao;

public class KhachHangBo {
	KhachHangDao khdao = new KhachHangDao();
	public KhachHangBean ktraDN (String un, String pass) throws Exception{
    	return khdao.ktraDN(un, pass);
    }
	public KhachHangBean CheckAccount (String un) throws Exception{
		return khdao.CheckAccount(un);
	}
	
	public int  Signup(String hoten, String diachi, String sodt, String email, String tendn, String pass) throws Exception {
		return khdao.Signup(hoten, diachi, sodt, email, tendn, pass);
	}
}
