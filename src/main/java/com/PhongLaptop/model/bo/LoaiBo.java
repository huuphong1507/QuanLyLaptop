package com.PhongLaptop.model.bo;

import java.util.ArrayList;

import com.PhongLaptop.model.bean.LaptopBean;
import com.PhongLaptop.model.bean.LoaiBean;
import com.PhongLaptop.model.dao.LaptopDao;
import com.PhongLaptop.model.dao.LoaiDao;

public class LoaiBo {
	LoaiDao dao = new LoaiDao();
	public ArrayList<LoaiBean> getLoaiLaptop() throws Exception {
		return dao.getLoaiLaptop();
	}
}
