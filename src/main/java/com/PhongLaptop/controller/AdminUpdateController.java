package com.PhongLaptop.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminUpdateController {
	@RequestMapping(value = "AdminUpdate", method = RequestMethod.GET)
	public String getAdminUpdate(HttpServletRequest request) {
		if (request.getParameter("MaLapTop") != null) {
			String MaLapTop = request.getParameter("MaLapTop");
			request.setAttribute("MaLapTop", MaLapTop);
			
			String tenlaptop = request.getParameter("tenlaptop");
			request.setAttribute("tenlaptop", tenlaptop);
			
			String soluong = request.getParameter("soluong");
			request.setAttribute("soluong", soluong);
			
			String gia = request.getParameter("gia");
			request.setAttribute("gia", gia);
			
			String RAM = request.getParameter("RAM");
			request.setAttribute("RAM", RAM);
			
			String CPU = request.getParameter("CPU");
			request.setAttribute("CPU", CPU);
			
			String anh = request.getParameter("anh");
			request.setAttribute("anh", anh);
			
			String ocung = request.getParameter("ocung");
			request.setAttribute("ocung", ocung);
			
			String manhinh = request.getParameter("manhinh");
			request.setAttribute("manhinh", manhinh);
			
			String carddohoa = request.getParameter("carddohoa");
			request.setAttribute("carddohoa", carddohoa);
			
			String pin = request.getParameter("pin");
			request.setAttribute("pin", pin);
		}
		

		return "UpdateSach";
	}
}
