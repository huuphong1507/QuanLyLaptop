package com.PhongLaptop.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.PhongLaptop.model.bean.LaptopBean;
import com.PhongLaptop.model.bean.LoaiBean;
import com.PhongLaptop.model.bo.LaptopBo;
import com.PhongLaptop.model.bo.LoaiBo;

@Controller
public class LaptopController {
	@RequestMapping(value = "HomeLaptop", method = RequestMethod.GET)
	public String getAlluser(HttpServletRequest request) {
		String maloai = request.getParameter("maloai");
		String timkiem = request.getParameter("txtSearch");
		System.out.print(timkiem);
		LoaiBo lbo = new LoaiBo();
		LaptopBo bo = new LaptopBo();
		ArrayList<LaptopBean> list;
		ArrayList<LoaiBean> lbean;
		
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
			return "Home1";
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}

	}
	
	
}
