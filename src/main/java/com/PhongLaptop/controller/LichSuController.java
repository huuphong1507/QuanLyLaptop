package com.PhongLaptop.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.PhongLaptop.model.bean.KhachHangBean;
import com.PhongLaptop.model.bean.LichSuBean;
import com.PhongLaptop.model.bo.LichSuBo;

@Controller
public class LichSuController {
	@RequestMapping("/History")
	public String voidhow(HttpServletRequest request, HttpSession session)
	{
		try {
			LichSuBo bo = new LichSuBo();
			KhachHangBean kh = (KhachHangBean) session.getAttribute("tttaikhoan");
			ArrayList<LichSuBean> ds = bo.getLichSu(kh.getMakh());
			request.setAttribute("history", ds);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "LichSuNe";
	}

}
