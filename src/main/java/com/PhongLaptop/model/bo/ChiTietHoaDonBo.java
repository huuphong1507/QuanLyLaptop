package com.PhongLaptop.model.bo;

import com.PhongLaptop.model.dao.ChiTietHoaDonDao;

public class ChiTietHoaDonBo {
	ChiTietHoaDonDao cthddao = new ChiTietHoaDonDao();
	public void getChiTietHoaDon(GioHangBo bo) throws Exception {
		 cthddao.getChiTietHoaDon(bo);
	}
}
