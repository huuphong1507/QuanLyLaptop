package com.PhongLaptop.model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.PhongLaptop.model.bo.GioHangBo;

public class ChiTietHoaDonDao {
	public void getChiTietHoaDon(GioHangBo bo) throws Exception {
		DungChung dc = new DungChung();
		dc.ketNoi();
		Statement statement =dc.cn.createStatement();
		String query = "select * from HoaDon";
		System.out.println(query);
		ResultSet rs = statement.executeQuery(query);
		int y = 0;
		while (rs.next()) {
			y = rs.getInt("MaHoaDon");
		}
		int n = bo.ds.size();
		for (int i = 0; i < n; i++) {
			String struct = " insert into ChiTietHoaDon(MaLaptop,SoLuongMua,MaHoaDon)" + "values('"
					+ bo.ds.get(i).getMaLapTop() + "','" + bo.ds.get(i).getSoluong() + "','" + y + "')";
			System.out.println(struct);
			PreparedStatement preparedStatement1 = dc.cn.prepareStatement(struct);
			int x = preparedStatement1.executeUpdate();
		}

	}
	
}
