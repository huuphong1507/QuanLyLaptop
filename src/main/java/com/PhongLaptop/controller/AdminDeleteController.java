package com.PhongLaptop.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.PhongLaptop.model.bo.LaptopBo;

@Controller
public class AdminDeleteController {
	@RequestMapping(value = "AdminDelete", method = RequestMethod.GET)
	public String getAlluser(HttpServletRequest request, HttpServletResponse response) {
		String masach = request.getParameter("masach");
		try {
			response.getWriter().print(masach);
			LaptopBo sbo = new LaptopBo();
			sbo.XoaLaptop(masach);
			return "Admin";
		}catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
