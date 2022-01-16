package com.PhongLaptop.model.bo;

import java.util.ArrayList;

import com.PhongLaptop.model.bean.ThongTinThanhToanBean;
import com.PhongLaptop.model.dao.ThongTinThanhToanDao;

public class ThongTinThanhToanBo {
ThongTinThanhToanDao dao = new ThongTinThanhToanDao();
public ArrayList<ThongTinThanhToanBean> getThanhToan() throws Exception {
	return dao.getThanhToan();
}


}
