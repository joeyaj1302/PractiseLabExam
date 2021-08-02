package com.example.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.daos.VendorDao;
import com.example.entities.Vendor;

@Service
public class VendorServiceImpl implements VendorService{
	@Autowired
	private VendorDao vendorDao;
	@Override
	public Vendor findById(int id) {
		Optional<Vendor> vendor = vendorDao.findById(id);
		return vendor.orElse(null);
	}

	@Override
	public Vendor findByEmail(String email) {
		Vendor vendor = vendorDao.findByEmail(email);
		return vendor;
	}

	@Override
	public List<Vendor> findAll() {
		List<Vendor> list = vendorDao.findAll();
		return list;
	}

	@Override
	public void deleteVendorById(int id) {
		vendorDao.deleteById(id);
		
	}

	@Override
	public Vendor updateVendorById(int id, String city, String cell_no) {
		Optional<Vendor> vendor = vendorDao.findById(id);
		if (vendor.isPresent()) {
			Vendor ven = vendor.get();
			ven.setCity(city);
			ven.setCell_no(cell_no);
			Vendor vendor1 = vendorDao.save(ven);
			return vendor1;
		}
		return null;
	}

	@Override
	public boolean addVendor(Vendor vendor) {
		vendorDao.save(vendor);
		return true;
	}

	@Override
	public Vendor authenticateVendor(String email, String password) {
		// TODO Auto-generated method stub
		return null;
	}

}
