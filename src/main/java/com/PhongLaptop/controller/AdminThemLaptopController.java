package com.PhongLaptop.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.PhongLaptop.model.bo.LaptopBo;

import java.util.List;
@Controller
public class AdminThemLaptopController {
	@RequestMapping(value = "AdminThemLaptop", method = RequestMethod.POST)
	public String getAdminAdd(HttpServletRequest request, HttpServletResponse response) {
		
	response.setCharacterEncoding("utf-8");
	response.setContentType("text/html;charset=utf-8");
		String nameimg = null;
		String urlimage = null,MaLapTop =null,  tenlaptop = null, RAM = null, CPU = null, ocung = null, manhinh = null, carddohoa = null
				, pin = null;
		
		String gia = null;
		DiskFileItemFactory factory = new DiskFileItemFactory();
		DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(fileItemFactory);
		String dirUrl1 = request.getServletContext().getRealPath("") + File.separator + "files";
		
		
		try {
			response.getWriter().println(dirUrl1);
			List<FileItem> fileItems = upload.parseRequest(request);// Lấy về các đối tượng gửi lên
			// duyệt qua các đối tượng gửi lên từ client gồm file và các control
			for (FileItem fileItem : fileItems) {
				if (!fileItem.isFormField()) {// Nếu ko phải các control=>upfile lên
					// xử lý file
					nameimg = fileItem.getName();
					if (!nameimg.equals("")) {
						// Lấy đường dẫn hiện tại, chủ ý xử lý trên dirUrl để có đường dẫn đúng
						String dirUrl = request.getServletContext().getRealPath("") + File.separator + "img";
						File dir = new File(dirUrl);
						if (!dir.exists()) {// nếu ko có thư mục thì tạo ra
							dir.mkdir();
						}
						String fileImg = dirUrl + File.separator + nameimg;
						File file = new File(fileImg);// tạo file
						try {
							fileItem.write(file);// lưu file
							System.out.println("UPLOAD THÀNH CÔNG...!");
						System.out.println("Đường dẫn lưu file là: " + dirUrl);
					} catch (Exception e) {
							e.printStackTrace();
						}
					}
				} else// Neu la control
				{
					String tentk = fileItem.getFieldName();
					if (tentk.equals("txtMaLapTop")) {
						MaLapTop = fileItem.getString("utf-8");
						response.getWriter().println(MaLapTop);
					}
					if (tentk.equals("txttenlaptop")) {
						tenlaptop = fileItem.getString("utf-8");
						response.getWriter().println(tenlaptop);
					}
					
					if (tentk.equals("txtgia")) {
						gia = fileItem.getString("utf-8");
						response.getWriter().println(gia);
					}
					if (tentk.equals("txtRAM")) {
						RAM = fileItem.getString("utf-8");
						response.getWriter().println(RAM);
					}
					if (tentk.equals("txtCPU")) {
						CPU = fileItem.getString("utf-8");
						response.getWriter().println(CPU);
					}
					if (tentk.equals("txtocung")) {
						ocung = fileItem.getString("utf-8");
						response.getWriter().println(ocung);
					}
					if (tentk.equals("txtmanhinh")) {
						manhinh = fileItem.getString("utf-8");
						response.getWriter().println(manhinh);
					}
					if (tentk.equals("txtcarddohoa")) {
						carddohoa = fileItem.getString("utf-8");
						response.getWriter().println(carddohoa);
					}
					if (tentk.equals("txtpin")) {
						pin = fileItem.getString("utf-8");
						response.getWriter().println(pin);
					}
					
					
			}

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		urlimage = "img/" + nameimg;
		LaptopBo sbo = new LaptopBo();
		try {
			sbo.ThemLaptop(MaLapTop, tenlaptop, RAM, CPU, ocung, manhinh, carddohoa, pin, gia, urlimage);
		} catch (Exception e) {
			// TODO: handle exception
		}
		request.setAttribute("thanhcong", "thanhcong");
		return "FormThemLaptop";
	}
}
