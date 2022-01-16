package com.PhongLaptop.model.bo;

import com.PhongLaptop.model.dao.HoaDonDao;

public class HoaDonBo {
	HoaDonDao hddao = new HoaDonDao();
	public void getHoaDon(int makh) throws Exception
	{
		hddao.getHoaDon(makh);
	}
}
