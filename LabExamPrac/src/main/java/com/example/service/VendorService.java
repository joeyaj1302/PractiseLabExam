package com.example.service;

import java.util.List;

import com.example.entities.Vendor;

public interface VendorService {
	Vendor findById(int id);
	Vendor findByEmail(String email);
	List<Vendor> findAll();
	void deleteVendorById(int id);
	Vendor updateVendorById(int id, String city, String cell_no);
	boolean addVendor(Vendor vendor);
	Vendor authenticateVendor(String email, String password);
	
}
