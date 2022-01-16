package com.PhongLaptop.model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.PhongLaptop.model.bean.KhachHangBean;

public class KhachHangDao {
	public KhachHangBean ktraDN (String un, String pass) throws Exception{
    	ArrayList<KhachHangBean> kh = new ArrayList<KhachHangBean>();	
    	DungChung dc= new DungChung();
    	dc.ketNoi();
    	String sql = "select * from KhachHang where tendn='"+un+"'and  pass='"+pass+"'" ;
		System.out.println(sql);
		  PreparedStatement cmd= dc.cn.prepareStatement(sql);
		   ResultSet rs= cmd.executeQuery();
		   if(rs.next()==false)
		   {
			   return null;
		   }
		   else
  {
				KhachHangBean kh1 = new KhachHangBean();
				kh1.setMakh(rs.getInt(1));
				kh1.setHoten(rs.getString(2));
				kh1.setDiachi(rs.getString(3));
				kh1.setPass(rs.getString(7));
				kh1.setTendn(rs.getString(6));
				kh1.setSodt(rs.getString(4));
				kh1.setEmail(rs.getString(5));
			   return kh1;
		   }
		
	
    }
	public KhachHangBean CheckAccount (String un) throws Exception{
    	ArrayList<KhachHangBean> kh = new ArrayList<KhachHangBean>();	
    	DungChung dc= new DungChung();
    	dc.ketNoi();
    	String sql = "select * from KhachHang where tendn='"+un+"'";
		System.out.println(sql);
		  PreparedStatement cmd= dc.cn.prepareStatement(sql);
		   ResultSet rs= cmd.executeQuery();
		   if(rs.next()==false)
		   {
			   return null;
		   }
		   else
  {
				KhachHangBean kh1 = new KhachHangBean();
				kh1.setMakh(rs.getInt(1));
				kh1.setHoten(rs.getString(2));
				kh1.setDiachi(rs.getString(3));
				kh1.setPass(rs.getString(7));
				kh1.setTendn(rs.getString(6));
			   return kh1;
		   }
		
	
    }
	
	
	public int  Signup(String hoten, String diachi, String sodt, String email, String tendn, String pass) throws Exception {
		ArrayList<KhachHangBean> kh = new ArrayList<KhachHangBean>();
		DungChung dc= new DungChung();
    	dc.ketNoi();
		String sql = "insert into KhachHang(hoten,diachi,sodt,email,tendn,pass) values(?,?,?,?,?,?)";
		System.out.println(sql);
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
	    cmd.setString(1, hoten);
	    cmd.setString(2, diachi);
	    cmd.setString(3, sodt);
	    cmd.setString(4, email);
	    cmd.setString(5, tendn);
	    cmd.setString(6, pass);
	    int x = cmd.executeUpdate();
		return x;
		
	}
}
