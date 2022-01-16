package com.PhongLaptop.model.dao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.PhongLaptop.model.bean.ThongTinThanhToanBean;
public class ThongTinThanhToanDao {
	public ArrayList<ThongTinThanhToanBean> getThanhToan() throws Exception {
		DungChung dc = new DungChung();
		dc.ketNoi();
		String sql = "select hoten,MaChiTietHD,HoaDon.MaHoaDon,KhachHang.makh,NgayMua,SoLuongMua,gia,damua "
				+ "from HoaDon inner join ChiTietHoaDon on " + "HoaDon.MaHoaDon = ChiTietHoaDon.MaHoaDon "
				+ "inner join Laptop on " + "Laptop.MaLaptop=ChiTietHoaDon.MaLaptop "
				+ "inner join KhachHang on KhachHang.makh = HoaDon.makh ";
		System.out.println(sql);
		ArrayList<ThongTinThanhToanBean> ds = new ArrayList<ThongTinThanhToanBean>();
		PreparedStatement pStatement = dc.cn.prepareStatement(sql);
		ResultSet resultSet = pStatement.executeQuery();
		while (resultSet.next()) {
			ThongTinThanhToanBean thongtin = new ThongTinThanhToanBean();
			thongtin.setMaChiTietHoaDon(resultSet.getInt("MaChiTietHD"));
			thongtin.setMaHoaDon(resultSet.getInt("MaHoaDon"));
			thongtin.setMakh(resultSet.getString("makh"));
			thongtin.setNgayMua(resultSet.getDate("NgayMua"));
			thongtin.setGia(resultSet.getInt("gia"));
			thongtin.setSoLuongMua(resultSet.getInt("SoLuongMua"));
			thongtin.setDamua(resultSet.getInt("damua"));
			thongtin.setTenKh(resultSet.getString("hoten"));
			ds.add(thongtin);
		}
		return ds;
	}
}
