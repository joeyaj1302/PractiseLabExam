package com.sunbeam.services;

import java.util.List;

import com.sunbeam.entities.Vendor;

public interface VendorService {
	 Vendor findVendorById(int id);
	 Vendor findVendorByEmail(String email);
	 Vendor authenticateVendor(String email,String password);
	 List<Vendor> findAllVendors();
	 Vendor addVendor(Vendor v);
	 void deleteVendorById(int id);
	 Vendor updateVendor(int id, String City, String phNO);
}
