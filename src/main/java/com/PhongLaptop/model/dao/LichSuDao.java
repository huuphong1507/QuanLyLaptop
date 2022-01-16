package com.PhongLaptop.model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import com.PhongLaptop.model.bean.LichSuBean;

public class LichSuDao {
	public ArrayList<LichSuBean> getLichSu(int makh) throws Exception {
		ArrayList<LichSuBean> ds = new ArrayList<LichSuBean>();
		DungChung dc = new DungChung();
		dc.ketNoi();
		try {
			dc.ketNoi();
			String sql = "select damua,ChiTietHoaDon.MaLaptop,Laptop.tenlaptop, Laptop.CPU,Laptop.RAM,Laptop.ocung,Laptop.manhinh,Laptop.carddohoa,Laptop.pin,ChiTietHoaDon.SoLuongMua,Laptop.anh,HoaDon.NgayMua\r\n"
					+ "from HoaDon join ChiTietHoaDon  on HoaDon.MaHoaDon = HoaDon.MaHoaDon join Laptop  on ChiTietHoaDon.MaLaptop= Laptop.MaLaptop \r\n"
					+ "where HoaDon.makh=?";
			System.out.println(sql);
			PreparedStatement cmd = dc.cn.prepareStatement(sql);
			cmd.setInt(1, makh);
			System.out.println(makh);
			ResultSet rs = cmd.executeQuery();
			while (rs.next()) {
				LichSuBean list = new LichSuBean();
				list.setMaLapTop(rs.getString("MaLaptop"));
				list.setTenlaptop(rs.getString("tenlaptop"));

				list.setRAM(rs.getString("RAM"));
				list.setCPU(rs.getString("CPU"));
				list.setOcung(rs.getString("ocung"));
				list.setManhinh(rs.getString("manhinh"));
				list.setCarddohoa(rs.getString("carddohoa"));
				list.setPin(rs.getString("pin"));
				list.setAnh(rs.getString("anh"));
				list.setSoluong(rs.getInt("SoLuongMua"));
				list.setDate(rs.getDate("NgayMua"));
				list.setDamua(rs.getInt("damua"));
				ds.add(list);
			}
			cmd.close();
			dc.cn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return ds;
	}
}
