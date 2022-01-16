package com.PhongLaptop.model.dao;

import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Date;

public class HoaDonDao {
	public void getHoaDon(int makh) throws Exception
	{
		DungChung dc = new DungChung();
		dc.ketNoi();
		Date date = new Date();			
		SimpleDateFormat ft = new SimpleDateFormat("yyyy.MM.dd hh:mm:ss");
		String sql = " insert into hoadon(makh,NgayMua,damua) " + "values('" + makh + "','"
				+ ft.format(date) + "','" + 0 + "')";
		System.out.println(sql);
		PreparedStatement preparedStatement = dc.cn.prepareStatement(sql);
		int x = preparedStatement.executeUpdate();		
	}
}
