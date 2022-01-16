package com.PhongLaptop.controller;

import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.PhongLaptop.model.bean.KhachHangBean;
import com.PhongLaptop.model.bo.KhachHangBo;
import com.PhongLaptop.utils.MD5;
import com.PhongLaptop.utils.VerifyUtils;

@Controller
public class DangNhapController {
	@RequestMapping("/Login")
	public String voidProduct() {
		return "Home1";
	}

	@RequestMapping("/KiemTra")
	public String voidKiemtra(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		
			MD5 md5 = new MD5();
			String tk = request.getParameter("txtUser");
			String mk = request.getParameter("txtPass");
			String logout = request.getParameter("logout");
			boolean valid = true;

			try {
				request.setCharacterEncoding("UTF-8");
				response.setCharacterEncoding("UTF-8");
			if (logout == null) {
				KhachHangBo khbo = new KhachHangBo();
				if (mk != null) {
					String mkDaBam = md5.getHashPass(mk);

					KhachHangBean kh = khbo.ktraDN(tk, mkDaBam);

					if (kh != null) {// thông tin tài khoản chính xác
						String gRecaptchaResponse = request.getParameter("g-recaptcha-response");
						valid = VerifyUtils.verify(gRecaptchaResponse);

						if (valid == true) {
							session.setAttribute("tttaikhoan", (KhachHangBean) kh);
							return "Home1";
						}
					} else {
						// Sai mk or tk
						session.setAttribute("ttmatkhau", 1);
						session.setAttribute("tttaikhoan", null);
					}
				}
			} else {
				session.setAttribute("ttmatkhau", null);
				session.setAttribute("tttaikhoan", null);

			}

			return "Home1";
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@RequestMapping(value = "/Signup", method = RequestMethod.GET)
	public String Signup(HttpServletRequest request, HttpServletResponse response) {

		KhachHangBo bo = new KhachHangBo();
		try {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			String Hoten = request.getParameter("Hoten");
			String Sodienthoai = request.getParameter("Sodienthoai");
			String Diachi = request.getParameter("Diachi");
			String Email = request.getParameter("Email");
			String TenDangNhap = request.getParameter("TenDangNhap");
			String Pass = request.getParameter("Pass");
			MD5 md = new MD5();

			String hashPass = md.getHashPass(Pass);
			int x = bo.Signup(Hoten, Diachi, Sodienthoai, Email, TenDangNhap, hashPass);
			if (x != 0) {
				request.setAttribute("dangkythanhcong", "hehe");
				return "Home1";
			} else {
				return "SignupFail";
			}

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
