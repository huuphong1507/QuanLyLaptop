package com.PhongLaptop.model.bo;

import com.PhongLaptop.model.dao.XacNhanThanhToanDao;

public class XacNhanThanhToanBo {
	XacNhanThanhToanDao dao = new XacNhanThanhToanDao();

	public void XacNhanThanhToan(int machitiet) throws Exception {
		dao.XacNhanThanhToan(machitiet);
	}

}
