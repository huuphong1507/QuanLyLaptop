package com.PhongLaptop.model.bean;

import java.sql.Date;

public class LichSuBean {
	private String MaLapTop;
    private String tenlaptop; 
    private String CPU;
	private String RAM;
	private String ocung;
	private String manhinh;
	private String carddohoa;
	private String pin;
    private String anh;
    private int soluong;
    private Date date;
	private int damua;
	public LichSuBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public LichSuBean(String maLapTop, String tenlaptop, String cPU, String rAM, String ocung, String manhinh,
			String carddohoa, String pin, String anh, int soluong, Date date,int damua) {
		super();
		MaLapTop = maLapTop;
		this.tenlaptop = tenlaptop;
		CPU = cPU;
		RAM = rAM;
		this.ocung = ocung;
		this.manhinh = manhinh;
		this.carddohoa = carddohoa;
		this.pin = pin;
		this.anh = anh;
		this.soluong = soluong;
		this.date = date;
		this.damua=damua;
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
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getDamua() {
		return damua;
	}
	public void setDamua(int damua) {
		this.damua = damua;
	}
	
    
}
