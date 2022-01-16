package com.PhongLaptop.model.bo;

import java.util.ArrayList;

import com.PhongLaptop.model.bean.LichSuBean;
import com.PhongLaptop.model.dao.LichSuDao;

public class LichSuBo {
	LichSuDao lsdao = new LichSuDao();
	public ArrayList<LichSuBean> getLichSu(int makh) throws Exception {
		return lsdao.getLichSu(makh);
	}
}
