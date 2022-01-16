package com.PhongLaptop.model.bean;

public class GioHangBean {
	private String MaLapTop;
	private String tenlaptop;
	private int soluong;
	private Long gia;
	private String maloai;
	private String CPU;
	private String RAM;
	private String ocung;
	private String manhinh;
	private String carddohoa;
	private String pin;
	private String anh;
	private Long thanhTien;
	public GioHangBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public GioHangBean(String maLapTop, String tenlaptop, int soluong, Long gia, String maloai, String cPU,
			String rAM, String ocung, String manhinh, String carddohoa, String pin, String anh, Long thanhTien) {
		super();
		MaLapTop = maLapTop;
		this.tenlaptop = tenlaptop;
		this.soluong = soluong;
		this.gia = gia;
		this.maloai = maloai;
		CPU = cPU;
		RAM = rAM;
		this.ocung = ocung;
		this.manhinh = manhinh;
		this.carddohoa = carddohoa;
		this.pin = pin;
		this.anh = anh;
		this.thanhTien = thanhTien;
	}
	public String getMaLapTop() {
		return MaLapTop;
	}
	public void setMaLapTop(String maLapTop) {
		MaLapTop = maLapTop;
	}
	public String getTenlaptop() {
		return tenlaptop;
	}
	public void setTenlaptop(String tenlaptop) {
		this.tenlaptop = tenlaptop;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public Long getGia() {
		return gia;
	}
	public void setGia(Long gia) {
		this.gia = gia;
	}
	public String getMaloai() {
		return maloai;
	}
	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}
	public String getCPU() {
		return CPU;
	}
	public void setCPU(String cPU) {
		CPU = cPU;
	}
	public String getRAM() {
		return RAM;
	}
	public void setRAM(String rAM) {
		RAM = rAM;
	}
	public String getOcung() {
		return ocung;
	}
	public void setOcung(String ocung) {
		this.ocung = ocung;
	}
	public String getManhinh() {
		return manhinh;
	}
	public void setManhinh(String manhinh) {
		this.manhinh = manhinh;
	}
	public String getCarddohoa() {
		return carddohoa;
	}
	public void setCarddohoa(String carddohoa) {
		this.carddohoa = carddohoa;
	}
	public String getPin() {
		return pin;
	}
	public void setPin(String pin) {
		this.pin = pin;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public Long getThanhTien() {
		return thanhTien;
	}
	public void setThanhTien(Long thanhTien) {
		this.thanhTien = thanhTien;
	}
	
	
	
}
