package com.PhongLaptop.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PhanLoaiLaptopController {
	 @RequestMapping("/PhanLoai")
	    public String PhanLoai(HttpServletRequest request)
	    {
	        String maloai = request.getParameter("maloai");
	        request.setAttribute("maloai", maloai);
	        return "PhanLoai";
	    }
}
