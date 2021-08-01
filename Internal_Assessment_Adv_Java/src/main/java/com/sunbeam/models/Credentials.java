package com.sunbeam.models;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

public class Credentials {
	@NotBlank(message = "*")
	@Email(message = "invalid email")
	private String email;
	@NotBlank(message = "*")
	@Size(min = 4, max = 12, message = "min 4 and max 12 chars password required")
	private String password;
	
	public Credentials() {
	}

	public Credentials(@NotBlank(message = "*") @Email(message = "invalid email") String email,
			@NotBlank(message = "*") @Size(min = 4, max = 12, message = "min 4 and max 12 chars password required") String password) {
		this.email = email;
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Credentials [email=" + email + ", password=" + password + "]";
	}
	
	
	
}
