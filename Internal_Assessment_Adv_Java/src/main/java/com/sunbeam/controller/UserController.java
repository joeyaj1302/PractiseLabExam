package com.sunbeam.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sunbeam.entities.Vendor;
import com.sunbeam.models.Credentials;
import com.sunbeam.services.VendorService;

@Controller
public class UserController {
	@Autowired
	private VendorService vendorService;
	@RequestMapping("/login")
	public String login(Model model) {
		Credentials cred = new Credentials("Someone@gmail.com","");
		model.addAttribute("cred",cred);
		return "login";
	}
	
	@RequestMapping("/authenticate")
	public String authenticate(@Valid @ModelAttribute("cred") Credentials cred, BindingResult res, HttpSession session,Model model) {
		String email = cred.getEmail();
		String password = cred.getPassword();
		System.out.println(email + " " +password);
		Vendor vendor = vendorService.findVendorByEmail(email);
		if(vendor != null && vendor.getPassword().equals(password) && vendor.getRole().equals("vendor")) {
			session.setAttribute("loggedin", true);
			session.setAttribute("vendor", vendor);
			//model.addAttribute("vendor", vendor);
			return "details";
		}
		else if(vendor != null && vendor.getPassword().equals(password) && vendor.getRole().equals("admin")) {
			session.setAttribute("id", vendor.getId());
			session.setAttribute("name", vendor.getName());
			session.setAttribute("loggedin", true);
			return "redirect:ListVendorsPage";
		}
		model.addAttribute("message", "Invalid Login please Login again");
		return "login";
		
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session, Model model) {
		String name = (String) session.getAttribute("name");
		model.addAttribute("name", name);
		session.setAttribute("loggedin", false);
		session.invalidate();
		return "logout";
	}
	@RequestMapping("/ListVendorsPage")
	public String ListVendorsPage(HttpSession session, Model model) {
		String name = (String) session.getAttribute("name");
		boolean loggedin = (boolean) session.getAttribute("loggedin");
		System.out.println(name);
		if(loggedin) {
			List<Vendor> vendorlist = vendorService.findAllVendors();
			session.setAttribute("vendorList", vendorlist);
			return "ListVendorsPage";
		}
		else {
			return "redirect:login";
		}
	}
	
	@RequestMapping("/update")
	public String update(@RequestParam("id") String id, Model model) {
		int vid = Integer.parseInt(id);
		Vendor vendor = vendorService.findVendorById(vid);
		model.addAttribute("vendor", vendor);
		return "update";
	}
	
	@RequestMapping("/updateVendor")
	public String updateVendor(@RequestParam("id") String id,@RequestParam("city") String city,@RequestParam("cell_no") String cell_no, Model model) {
		System.out.println(id + " "+city + " " +cell_no);
		int vid = Integer.parseInt(id);
		vendorService.updateVendor(vid, city, cell_no);
		return "redirect:ListVendorsPage";
	}
	@RequestMapping("/delete")
	public String delete(@RequestParam("id") String id) {
		int vid = Integer.parseInt(id);
		vendorService.deleteVendorById(vid);
		return "redirect:ListVendorsPage";
		
	}
	
	@RequestMapping("/addvendor")
	public String addVendor() {
		return "addvendor";
	}
	
	@RequestMapping("/addvendortodb")
	public String addvendortodb( @RequestParam MultiValueMap<String,String> data) throws ParseException {
		System.out.println(data.values());
		Vendor vendor = new Vendor();
		vendor.setName(data.getFirst("name"));
		vendor.setEmail(data.getFirst("email"));
		vendor.setPassword(data.getFirst("password"));
		vendor.setCity(data.getFirst("city"));
		vendor.setCell_no(data.getFirst("cell_no"));
		double reg_amt = Double.parseDouble(data.getFirst("reg_amount"));
		vendor.setReg_amount(reg_amt);
		System.out.println(data.getFirst("reg_date"));
		LocalDate date = LocalDate.parse("2018-05-05");
		Date d = new SimpleDateFormat("yyyy-MM-dd").parse(date.toString());
		System.out.println(d);
		vendor.setReg_date(d);
		System.out.println(vendor.toString());
		vendor.setRole(data.getFirst("role"));
		vendorService.addVendor(vendor);
		return "redirect:ListVendorsPage";
		
	}

}
