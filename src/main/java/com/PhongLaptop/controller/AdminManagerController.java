package com.PhongLaptop.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.PhongLaptop.model.bean.AdminBean;
import com.PhongLaptop.model.bean.LaptopBean;
import com.PhongLaptop.model.bean.LoaiBean;
import com.PhongLaptop.model.bo.AdminBo;
import com.PhongLaptop.model.bo.LaptopBo;
import com.PhongLaptop.model.bo.LoaiBo;

@Controller
public class AdminManagerController {
	@RequestMapping(value = "AdminManager", method = RequestMethod.GET)
	public String getAlluser(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		String maloai = request.getParameter("maloai");
		String timkiem = request.getParameter("txtSearch");
		System.out.print(timkiem);
		LoaiBo lbo = new LoaiBo();
		LaptopBo bo = new LaptopBo();
		ArrayList<LaptopBean> list;
		ArrayList<LoaiBean> lbean;
		String username = request.getParameter("username");
		String password = request.getParameter("password");
	
		AdminBo adbo = new AdminBo();
		
		
		try {
			if(maloai!=null && timkiem == null)
			{
				list = bo.getTimKiem(maloai);
			
			}
			else if (maloai == null && timkiem != null)
			{
			list = bo.getTimKiemTen(timkiem);
			
			}
			else {
			 list = bo.getLaptop();
			}
			request.setAttribute("HomeLaptop", list);
			lbean = lbo.getLoaiLaptop();
			request.setAttribute("LoaiBean", lbean);
        	
    		return "Admin";
    	}catch (Exception e) {
    		e.printStackTrace();
    		return null;
    	}
	}
}
