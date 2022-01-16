package com.PhongLaptop.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.PhongLaptop.model.bean.LoaiBean;
import com.PhongLaptop.model.bo.LoaiBo;

@Controller
public class ChuyenThemLaptopController {
	@RequestMapping(value = "ChuyenThemLaptop", method = RequestMethod.GET)
	public String getAlluser(HttpServletRequest request) {
		try {
			
			LoaiBo lbo = new LoaiBo();
			ArrayList<LoaiBean> dsloai = lbo.getLoaiLaptop();
			request.setAttribute("dsloai123", dsloai);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "FormThemLaptop";
	}
}

