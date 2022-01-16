package com.PhongLaptop.model.bean;

public class ChiTietHoaDonBean {
	private String MaLaptop;
	private int SoLuongMua;
	private int MaHoaDon;
	public ChiTietHoaDonBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ChiTietHoaDonBean(String maLaptop, int soLuongMua, int maHoaDon) {
		super();
		MaLaptop = maLaptop;
		SoLuongMua = soLuongMua;
		MaHoaDon = maHoaDon;
	}
	public String getMaLaptop() {
		return MaLaptop;
	}
	public void setMaLaptop(String maLaptop) {
		MaLaptop = maLaptop;
	}
	public int getSoLuongMua() {
		return SoLuongMua;
	}
	public void setSoLuongMua(int soLuongMua) {
		SoLuongMua = soLuongMua;
	}
	public int getMaHoaDon() {
		return MaHoaDon;
	}
	public void setMaHoaDon(int maHoaDon) {
		MaHoaDon = maHoaDon;
	}
	
	
}
