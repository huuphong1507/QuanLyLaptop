package com.PhongLaptop.model.bo;

import java.util.ArrayList;

import com.PhongLaptop.model.bean.LaptopBean;
import com.PhongLaptop.model.dao.LaptopDao;

public class LaptopBo {
	LaptopDao dao = new LaptopDao();
	public ArrayList<LaptopBean> getLaptop()throws Exception{
		return dao.getLaptop();
	}
	public ArrayList<LaptopBean> getTimKiem(String maloai)throws Exception{
		return dao.getTimKiem(maloai);
	}
	public ArrayList<LaptopBean> getTimKiemTen(String maloai)throws Exception{
		return dao.getTimKiemTen(maloai);
	}
	public void XoaLaptop(String MaLapTop) throws Exception {
		 dao.XoaLaptop(MaLapTop);
	}
	public void UpdateLaptop(String MaLapTop,String tenlaptop ,String soluong, String gia, String maloai, String CPU, String RAM, String ocung, String manhinh, String carddohoa, String pin,String anh) {
		dao.UpdateLaptop(MaLapTop, tenlaptop, soluong, gia, maloai, CPU, RAM, ocung, manhinh, carddohoa, pin, anh);
	}
	public void ThemLaptop(String MaLapTop,String tenlaptop, String RAM, String CPU,String ocung,String manhinh, String carddohoa,String pin, String gia, String urlimage) throws Exception {
		dao.ThemLaptop(MaLapTop, tenlaptop, RAM, CPU, ocung, manhinh, carddohoa, pin, gia, urlimage);
	}
	
}
