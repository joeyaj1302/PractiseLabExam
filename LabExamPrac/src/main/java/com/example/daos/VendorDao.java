package com.example.daos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.entities.Vendor;

public interface VendorDao extends JpaRepository<Vendor, Integer>{
	Vendor findByEmail(String email);
}
