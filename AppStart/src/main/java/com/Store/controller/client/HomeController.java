package com.Store.controller.client;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.Store.model.SachDTO;
import com.Store.service.NhaXuatBanService;
import com.Store.service.NhomMuaSevice;
import com.Store.service.SachService;
import com.Store.service.TheLoaiService;

@Controller
public class HomeController {
	@Autowired
	SachService sachService;
	@Autowired
	TheLoaiService theLoaiService;
	@Autowired
	NhomMuaSevice nhomMuaSevice;
	@Autowired
	NhaXuatBanService nhaXuatBanService;

	@GetMapping(value = "/danh-sach-san-pham")
	public String getListBook(HttpServletRequest req) {
		int size = 5;
		int totalData = sachService.getAllBook(0, (int) sachService.count()).size();
		int totalPage = totalData < 1 ? 1
				: totalData / size * size < totalData ? totalData / size + 1 : totalData / size;
		int currentPage = req.getParameter("currentPage") == null ? 1
				: Integer.parseInt(req.getParameter("currentPage"));
		currentPage = currentPage < 1 ? 1 : currentPage > totalPage ? totalPage : currentPage;
		int start = (currentPage - 1) * size + 1;
		int end = start + size - 1 < totalData ? start + size - 1 : totalData;
		
		req.setAttribute("currentPage", currentPage);
		req.setAttribute("totalData", totalData);
		req.setAttribute("totalPage", totalPage);
		req.setAttribute("start", start);
		req.setAttribute("end", end);

		List<SachDTO> books = sachService.getAllBook(currentPage - 1, size);
		
		req.setAttribute("NhomMuas", nhomMuaSevice.getAll());
		req.setAttribute("books", books);
		
		Set<SachDTO> theloaiSachs = new HashSet<SachDTO>(); 
		for(SachDTO book : sachService.getAllBook(0, (int) sachService.count())) {
			theloaiSachs.add(book);
		}
		req.setAttribute("theloais", theloaiSachs);
		return "client/index";
	}
	
	@GetMapping(value = "/tim-kiem")
	public String search(HttpServletRequest req) {

		String tensach = req.getParameter("tensach") == null ? "" : req.getParameter("tensach");
		String theloai = req.getParameter("theloai") == null ? "" : req.getParameter("theloai");
		String nhommua = req.getParameter("nhommua") == null ? "" : req.getParameter("nhommua");

		int size = 5;
		int totalData = sachService
				.search(tensach, theloai, "", nhommua, 0, 1000000, 0, (int) sachService.count()).size();
		int totalPage = totalData < 1 ? 1
				: totalData / size * size < totalData ? totalData / size + 1 : totalData / size;

		int currentPage = req.getParameter("currentPage") == null ? 1
				: Integer.parseInt(req.getParameter("currentPage"));
		currentPage = currentPage < 1 ? 1 : currentPage > totalPage ? totalPage : currentPage;

		int start = (currentPage - 1) * size + 1;

		int end = start + size - 1 < totalData ? start + size - 1 : totalData;

		req.setAttribute("tensach", tensach);
		req.setAttribute("theloai", theloai);
		req.setAttribute("nhommua", nhommua);

		req.setAttribute("currentPage", currentPage);
		req.setAttribute("totalData", totalData);
		req.setAttribute("totalPage", totalPage);
		req.setAttribute("start", start);
		req.setAttribute("end", end);

		req.setAttribute("TheLoais", theLoaiService.getAll());
		req.setAttribute("NhomMuas", nhomMuaSevice.getAll());

		List<SachDTO> books = sachService.search(tensach, theloai, "", nhommua, 0, 1000000, currentPage - 1,
				size);
		Set<SachDTO> theloaiSachs = new HashSet<SachDTO>(); 
		for(SachDTO book : sachService.getAllBook(0, (int) sachService.count())) {
			theloaiSachs.add(book);
		}
		req.setAttribute("theloais", theloaiSachs);

		req.setAttribute("books", books);
		return "client/search";
	}
	
	@GetMapping(value = "/san-pham/{bookId}")
	public String deletesBook(HttpServletRequest req, @PathVariable(name = "bookId") int bookId) {
		req.setAttribute("masach", bookId);
		req.setAttribute("sach", sachService.getBookById(bookId));
		return "redirect:/admin/san-pham/danh-sach-san-pham";
	}
}
