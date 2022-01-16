package com.PhongLaptop.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.PhongLaptop.model.bean.KhachHangBean;
import com.PhongLaptop.model.bo.ChiTietHoaDonBo;
import com.PhongLaptop.model.bo.GioHangBo;
import com.PhongLaptop.model.bo.HoaDonBo;

@Controller
public class OrderController {
	@RequestMapping(value = "OrderCart", method = RequestMethod.GET)
	public String getOrder(HttpServletRequest request) {
		HttpSession session = request.getSession();
		HoaDonBo hdbBo = new HoaDonBo();
		ChiTietHoaDonBo chiTietHoaDonBo = new ChiTietHoaDonBo();
		KhachHangBean kh = (KhachHangBean) session.getAttribute("tttaikhoan");
		GioHangBo bo = new GioHangBo();
		if (kh == null) {
			request.setAttribute("abc", "abc");
		} else {
			try {
				hdbBo.getHoaDon(kh.getMakh());
				bo = (GioHangBo) session.getAttribute("giohang");
				chiTietHoaDonBo.getChiTietHoaDon(bo);
				request.setAttribute("thanhcong", "kiemtra");
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		return "TestCart";
	}
}
