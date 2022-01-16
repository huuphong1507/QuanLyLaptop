package com.PhongLaptop.model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.PhongLaptop.model.bean.LaptopBean;
import com.PhongLaptop.model.dao.DungChung;


public class LaptopDao {
	public ArrayList<LaptopBean> getLaptop()throws Exception{
		ArrayList<LaptopBean> lbean = new ArrayList<LaptopBean>();
		DungChung dc = new DungChung();
		dc.ketNoi();
		String sql = "Select * from Laptop";
		System.out.println(sql);
		PreparedStatement ps = dc.cn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			LaptopBean sv = new LaptopBean(rs.getString("MaLaptop")
										   , rs.getString("tenlaptop")
										   , rs.getInt("soluong")
										   , rs.getLong("gia")
										   , rs.getString("maloai")
										   , rs.getString("CPU")
										   , rs.getString("RAM")
										   , rs.getString("ocung")
										   , rs.getString("manhinh")
										   , rs.getString("carddohoa")
										   , rs.getString("pin")
										   , rs.getString("anh"));
			lbean.add(sv);
		}
		return lbean;
	}
	public ArrayList<LaptopBean> getTimKiem(String maloai)throws Exception{
		ArrayList<LaptopBean> list = new ArrayList<LaptopBean>();
		DungChung dc = new DungChung();
		dc.ketNoi();
		String sql = "Select * from Laptop where maloai = ? ";
		System.out.println(sql);
		PreparedStatement ps = dc.cn.prepareStatement(sql);
		ps.setString(1, maloai);
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			LaptopBean sv = new LaptopBean(rs.getString("MaLapTop")
										  , rs.getString("tenlaptop")
										  , rs.getInt("soluong")
										  , rs.getLong("gia")
										  , rs.getString("maloai")
										  , rs.getString("CPU")
										  , rs.getString("RAM")
										  , rs.getString("ocung")
										  , rs.getString("manhinh")
										  , rs.getString("carddohoa")
										  , rs.getString("pin")
										  , rs.getString("anh"));
			list.add(sv);
		}
		return list;
	}
	
	public ArrayList<LaptopBean> getTimKiemTen(String maloai)throws Exception{
		ArrayList<LaptopBean> list = new ArrayList<LaptopBean>();
		DungChung dc = new DungChung();
		dc.ketNoi();
		String sql = "Select * from Laptop where tenlaptop like ? ";
		System.out.println(sql);
		PreparedStatement ps = dc.cn.prepareStatement(sql);
		ps.setString(1, "%" + maloai + "%");
		ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			LaptopBean sv = new LaptopBean(rs.getString("MaLapTop")
										  , rs.getString("tenlaptop")
										  , rs.getInt("soluong")
										  , rs.getLong("gia")
										  , rs.getString("maloai")
										  , rs.getString("CPU")
										  , rs.getString("RAM")
										  , rs.getString("ocung")
										  , rs.getString("manhinh")
										  , rs.getString("carddohoa")
										  , rs.getString("pin")
										  , rs.getString("anh"));
			list.add(sv);
		}
		return list;
	}
	
	public void XoaLaptop(String MaLapTop) throws Exception {
		DungChung dc = new DungChung();
		dc.ketNoi();
		String sql = "delete from Laptop where MaLapTop=?";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		cmd.setString(1, MaLapTop);
		cmd.executeUpdate();
		cmd.close();
		dc.cn.close();
	}
	public void UpdateLaptop(String MaLapTop,String tenlaptop ,String soluong, String gia, String maloai, String CPU, String RAM, String ocung, String manhinh, String carddohoa, String pin,String anh) {
		try {
			DungChung dc = new DungChung();
			dc.ketNoi();
			String sql = "update Laptop \r\n"
					+ "set tenlaptop = ?,soluong = ?  	,gia = ? ,maloai = ?	,CPU = ?,RAM = ? ,ocung = ?,manhinh = ?, carddohoa = ?,pin =? ,anh =? 	 \r\n"
					+ "where MaLaptop = ?";
			PreparedStatement cmd = dc.cn.prepareStatement(sql);
			cmd.setString(1, tenlaptop);
			cmd.setString(2, soluong);
			cmd.setString(3, gia);
			cmd.setString(4, maloai);
			cmd.setString(5, CPU);
			cmd.setString(6, RAM);
			cmd.setString(7, ocung);
			cmd.setString(8, manhinh);
			cmd.setString(9, carddohoa);
			cmd.setString(10, pin);
			cmd.setString(11, anh);
			cmd.executeUpdate();
			cmd.close();
			dc.cn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void ThemLaptop(String MaLapTop,String tenlaptop, String RAM, String CPU,String ocung,String manhinh, String carddohoa,String pin, String gia, String anh) throws Exception {
		DungChung dc = new DungChung();
		dc.ketNoi();
		String sql = "insert into Laptop(MaLapTop, tenlaptop, RAM, CPU, ocung, manhinh, carddohoa, pin, gia, anh)" + " values (?,?,?,?,?,?,?,?,?,?)";
		System.out.print(sql);
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		cmd.setString(1, MaLapTop);
		cmd.setString(2, tenlaptop);
		cmd.setString(3, RAM);
		cmd.setString(4, CPU);
		cmd.setString(5, ocung);
		cmd.setString(6, manhinh);
		cmd.setString(7, carddohoa);
		cmd.setString(8, pin);
		cmd.setString(9, gia);
		cmd.setString(10, anh);
		cmd.executeUpdate();
		cmd.close();
		dc.cn.close();
		
	}
	
	
}
