package com.sunbeam.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sunbeam.daos.VendorDao;
import com.sunbeam.entities.Vendor;

@Transactional
@Service
public class VendorServiceImpl implements VendorService{
	@Autowired
	private VendorDao vendorDao;

	@Override
	public Vendor findVendorById(int id) {
		Optional<Vendor> vendor = vendorDao.findById(id);
		if(vendor.isPresent()) {
			return vendor.get();
		}
		return null;
	}

	@Override
	public Vendor findVendorByEmail(String email) {
		Vendor vendor = vendorDao.findByEmail(email);
		return vendor;
	}

	@Override
	public Vendor authenticateVendor(String email, String password) {
		Vendor vendor = vendorDao.findByEmail(email);
		if (vendor != null && vendor.getPassword().equals(password)) {
			return vendor;
		}
		return null;
	}

	@Override
	public List<Vendor> findAllVendors() {
		List<Vendor> list = vendorDao.findAll();
		return list;
	}

	@Override
	public Vendor addVendor(Vendor v) {
		vendorDao.save(v);
		return v;
	}

	@Override
	public void deleteVendorById(int id) {
		vendorDao.deleteById(id);
		
	}

	@Override
	public Vendor updateVendor(int id, String City, String phNO) {
		Optional<Vendor> vendor = vendorDao.findById(id);
		if(vendor.isPresent()) {
			Vendor ven = vendor.get();
			ven.setCity(City);
			ven.setCell_no(phNO);
			vendorDao.save(ven);
			return ven;
		}
		return null;
	}

}
