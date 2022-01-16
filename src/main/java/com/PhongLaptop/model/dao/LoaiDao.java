package com.PhongLaptop.model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.PhongLaptop.model.bean.LoaiBean;

public class LoaiDao {
	public ArrayList<LoaiBean> getLoaiLaptop() throws Exception {
		ArrayList<LoaiBean> lbean = new ArrayList<LoaiBean>();
		DungChung dc = new DungChung();
		dc.ketNoi();
		String sql = "Select * from LoaiLaptop";
		System.out.println(sql);
		PreparedStatement ps = dc.cn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			LoaiBean sv = new LoaiBean(rs.getString("maloai")
									   , rs.getString("tenloai"));
			lbean.add(sv);
		}
		return lbean;
	}
	
}
