package com.example.controllers;

import java.text.ParseException;
import java.text.SimpleDateFormat;
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

import com.example.entities.Vendor;
import com.example.models.Credentials;
import com.example.service.VendorService;

@Controller
public class ControllerImpl {
	@Autowired
	private VendorService vendorService;
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping("/authenticate")
	public String authenticate(Credentials cred, HttpSession session, Model model) {
		System.out.println(cred.toString());
		String email = cred.getEmail();
		String password = cred.getPassword();
		Vendor vendor = vendorService.findByEmail(email);
		if(vendor != null && vendor.getPassword().equals(password) && vendor.getRole().equals("vendor")) {
			session.setAttribute("name", vendor.getName());
			session.setAttribute("vendor", vendor);
			return "redirect:details";
		}
		else if(vendor != null && vendor.getPassword().equals(password) && vendor.getRole().equals("admin")) {
			session.setAttribute("name", vendor.getName());
			
			//
			return "redirect:ListVendorsPage";
		}
		model.addAttribute("message", "Invalid EmailId or password");
		return "login";
		
	}
	
	@RequestMapping("/details")
	public String details() {
		return "details";
	}
	
	@RequestMapping("/ListVendorsPage")
	public String ListVendorsPage(Model model) {
		List<Vendor> vendorList = vendorService.findAll();
		model.addAttribute("vendorList", vendorList);
		return "ListVendorsPage";
	}
	
	@RequestMapping("/update")
	public String update( @RequestParam("id") String id,Model model) {
		int vid = Integer.parseInt(id);
		Vendor vendor = vendorService.findById(vid);
		model.addAttribute("vendor", vendor);
		return "update";
	}
	
	@RequestMapping("/updateVendor")
	public String updateVendor(@RequestParam("id") String id, @RequestParam("city") String city, @RequestParam("cell_no") String cell_no) {
		int vid = Integer.parseInt(id);
		System.out.println(id+" "+ city +" " +cell_no);
		Vendor vendor = vendorService.updateVendorById(vid, city, cell_no);
		System.out.println(vendor.toString());
		return "redirect:ListVendorsPage";
		
	}
	@RequestMapping("/delete")
	public String deleteVenodr(@RequestParam("id") String id) {
		int vid = Integer.parseInt(id);
		vendorService.deleteVendorById(vid);
		return "redirect:ListVendorsPage";
	}
	
	@RequestMapping("/addvendor")
	public String addVendor() {
		return "addvendor";
		
	}
	@RequestMapping("/addvendortodb")
	public String addVendorToDb(Vendor v ) {
//		System.out.println(data.values());
//		Vendor vendor = new Vendor();
//		vendor.setName(data.getFirst("name"));
//		vendor.setEmail(data.getFirst("email"));
//		vendor.setPassword(data.getFirst("password"));
//		vendor.setCity(data.getFirst("city"));
//		Date date = new SimpleDateFormat("yyyy-MM-dd").parse(data.getFirst("date"));
//		vendor.setReg_date(date);
//		vendor.setRole(data.getFirst("role"));
		System.out.println(v.toString());
		vendorService.addVendor(v);
		return "redirect:ListVendorsPage";
	}
	
	
	
}
