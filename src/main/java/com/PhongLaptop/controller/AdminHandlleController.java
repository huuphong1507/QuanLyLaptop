package com.PhongLaptop.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.PhongLaptop.model.bean.ThongTinThanhToanBean;
import com.PhongLaptop.model.bo.ThongTinThanhToanBo;
import com.PhongLaptop.model.bo.XacNhanThanhToanBo;

@Controller
public class AdminHandlleController {
	@RequestMapping("/QuanLyUser")
	public String voidshowthayHadeptrai(HttpServletRequest request) {
		try {
			ThongTinThanhToanBo thongtin = new ThongTinThanhToanBo();
			ArrayList<ThongTinThanhToanBean> ds = thongtin.getThanhToan();
			request.setAttribute("thanhtoan", ds);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "AdminUserManager";
	}

	@RequestMapping("/AdminXacNhan")
	public String voidshow123(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			String machitiethoadon = request.getParameter("machitiet");
			XacNhanThanhToanBo xacnhan = new XacNhanThanhToanBo();
			int machitiet = Integer.parseInt(machitiethoadon);
			xacnhan.XacNhanThanhToan(machitiet);
			ThongTinThanhToanBo thongtin = new ThongTinThanhToanBo();
			ArrayList<ThongTinThanhToanBean> ds = thongtin.getThanhToan();
			request.setAttribute("thanhtoan", ds);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "AdminUserManager";
	}

}
