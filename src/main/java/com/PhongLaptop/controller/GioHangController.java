package com.PhongLaptop.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.PhongLaptop.model.bean.LaptopBean;
import com.PhongLaptop.model.bean.LoaiBean;
import com.PhongLaptop.model.bo.GioHangBo;
import com.PhongLaptop.model.bo.KhachHangBo;
import com.PhongLaptop.model.bo.LaptopBo;
import com.PhongLaptop.model.bo.LoaiBo;

@Controller
public class GioHangController {
	@RequestMapping(value = "GioHangCart", method = RequestMethod.GET)
	public String getAllProducts(HttpServletRequest request) {

		try {

			LaptopBo sbo = new LaptopBo();
			LoaiBo lbo = new LoaiBo();

			ArrayList<LaptopBean> dslaptop = sbo.getLaptop();

			ArrayList<LoaiBean> dsloai = lbo.getLoaiLaptop();

			String maloai = request.getParameter("maloai");
			String key = request.getParameter("txttk");
			if (maloai != null)
				dslaptop = sbo.getTimKiem(maloai);
			else if (key != null) {
				dslaptop = sbo.getTimKiemTen(key);
			}

			KhachHangBo khbo = new KhachHangBo();

			String maLapTop = request.getParameter("mlt");
			String tenlaptop = request.getParameter("tlt");
			String CPU = request.getParameter("cpu");
			String gia = request.getParameter("gia");
			String anh = request.getParameter("anh");
			String RAM = request.getParameter("ram");
			String ocung = request.getParameter("ocung");
			String manhinh = request.getParameter("manhinh");
			String carddohoa = request.getParameter("carddohoa");
			String pin = request.getParameter("pin");
			Long giaBan = 0L;

			// Xoá
			String msxoa = request.getParameter("delms");

			// Cập nhật
			String upsl = request.getParameter("upsl");
			String upms = request.getParameter("upms");

			HttpSession session = request.getSession();

			if (gia != null)
				giaBan = Long.parseLong(gia);

			if (maLapTop != null && giaBan != null && anh != null) {

				GioHangBo ghbo = new GioHangBo();

				if (session.getAttribute("giohang") == null) {
					session.setAttribute("giohang", ghbo);
				}

				ghbo = (GioHangBo) session.getAttribute("giohang");
				ghbo.Them(maLapTop, tenlaptop, 1, giaBan, maloai, CPU, RAM, ocung, manhinh, carddohoa, pin, anh);

			}

			return "TestCart";
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	@RequestMapping(value = "GioHangCartDelete", method = RequestMethod.GET)
	public String getDell(HttpServletRequest request, HttpSession session) {
		String maLapTop = request.getParameter("mlt");
		String tenlaptop = request.getParameter("tlt");
		String CPU = request.getParameter("cpu");
		String gia = request.getParameter("gia");
		String anh = request.getParameter("anh");
		String RAM = request.getParameter("ram");
		String ocung = request.getParameter("ocung");
		String manhinh = request.getParameter("manhinh");
		String carddohoa = request.getParameter("carddohoa");
		String pin = request.getParameter("pin");
		Long giaBan = 0L;
		String maloai = request.getParameter("maloai");
		String msxoa = request.getParameter("delms");
		try {
			if (gia != null)
				giaBan = Long.parseLong(gia);

			if (maLapTop != null && giaBan != null && anh != null) {

				GioHangBo ghbo = new GioHangBo();

				if (session.getAttribute("giohang") == null) {
					session.setAttribute("giohang", ghbo);
				}

				ghbo = (GioHangBo) session.getAttribute("giohang");
				ghbo.Them(maLapTop, tenlaptop, 1, giaBan, maloai, CPU, RAM, ocung, manhinh, carddohoa, pin, anh);

			}

			if (msxoa != null) {
				GioHangBo ghbo = new GioHangBo();
				ghbo = (GioHangBo) session.getAttribute("giohang");
				ghbo.Xoa(msxoa);
				if (ghbo.ds.size() == 0) {
					session.setAttribute("giohang", null);
				} else {
					session.setAttribute("giohang", ghbo);
				}
			}
			return "TestCart";
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@RequestMapping(value = "GioHangCartUpdate", method = RequestMethod.GET)
	public String getUpdate(HttpServletRequest request, HttpSession session) {
		String upsl = request.getParameter("upsl");
		String upms = request.getParameter("upms");
		if (upms != null) {
			if (upsl != null && upms != null) {
				int sl = Integer.parseInt(upsl);
				GioHangBo ghbo = new GioHangBo();
				ghbo = (GioHangBo) session.getAttribute("giohang");
				ghbo.Sua(upms, sl);
				session.setAttribute("giohang", ghbo);
			}

		}
		return "TestCart";
	}
}
