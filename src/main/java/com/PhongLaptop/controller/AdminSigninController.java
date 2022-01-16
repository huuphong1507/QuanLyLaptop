package com.PhongLaptop.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.PhongLaptop.model.bean.AdminBean;
import com.PhongLaptop.model.bo.AdminBo;

@Controller
public class AdminSigninController {
	@RequestMapping(value = "AdminDangNhap", method = RequestMethod.GET)
	public String getAlladmin(HttpServletRequest request, HttpSession session) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		AdminBo adbo = new AdminBo();
		
		try {
			AdminBean adbean = adbo.Login(username, password);
			if (adbean != null) {
				session.setAttribute("admin", adbean);
			}
			return "AdminSignin";
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
