package com.PhongLaptop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DangKyController {
	@RequestMapping("/Traveview")
	public String voidshow()
	{
		return "signup";
	}

}
