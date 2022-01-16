package com.PhongLaptop.model.bo;

import java.util.ArrayList;

import com.PhongLaptop.model.bean.GioHangBean;

public class GioHangBo {
	public ArrayList<GioHangBean> ds = new ArrayList<GioHangBean>();

    public GioHangBo() {
	super();
	// TODO Auto-generated constructor stub
    }
    public void Them(String MaLapTop, String tenlaptop, int soluong, Long gia, String maloai, String cPU,
			String rAM, String ocung, String manhinh, String carddohoa, String pin, String anh) {
    	int n = ds.size();
    	for (GioHangBean g : ds) {
    		if (g.getTenlaptop().toLowerCase().trim().equals(tenlaptop.toLowerCase().trim())) {
    			g.setSoluong(g.getSoluong() + soluong);;
    			return;
    		}
    	}
    	GioHangBean h = new GioHangBean(MaLapTop, tenlaptop, soluong, gia, maloai, cPU, rAM, ocung, manhinh, carddohoa, pin, anh, gia);
    	ds.add(h);
    	
    }
    public void Xoa (String MaLapTop) {
    	for (GioHangBean g : ds)
    		if (g.getMaLapTop().equals(MaLapTop)) {
    			ds.remove(g);
    			return;
    		}
    }
    public long tongTien() {
    	long total = 0;
    	for (int i = 0; i < ds.size(); i++) {
    	    total += ds.get(i).getThanhTien();
    	}
    	return total;
        }
    public void Sua(String MaLapTop, int soluong) {
    	for (int i = 0; i < ds.size(); i++) {
    	    if (MaLapTop.equals(ds.get(i).getMaLapTop())) {
    		ds.get(i).setSoluong(soluong);
    		return;
    	    }
    	}
        
    }
}
