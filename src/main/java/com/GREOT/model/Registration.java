package com.GREOT.model;

import jakarta.persistence.*;

@Entity
@Table(name="Registration")


public class Registration {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long R_id;
	private String username;
	
	@Column(unique = true)
	private String email;
	private String password;
	private String Confirm_password;
	
	
	public Long getR_id() {
		return R_id;
	}
	public void setR_id(Long r_id) {
		R_id = r_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
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
	public String getConfirm_password() {
		return Confirm_password;
	}
	public void setConfirm_password(String confirm_password) {
		Confirm_password = confirm_password;
	}
	
	
	public Registration(Long r_id, String username, String email, String password, String confirm_password,
			String userRole) {
		super();
		R_id = r_id;
		this.username = username;
		this.email = email;
		this.password = password;
		this.Confirm_password = confirm_password;
	}
	public Registration() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Registration [R_id=" + R_id + ", username=" + username + ", email=" + email + ", password=" + password
				+ ", Confirm_password=" + Confirm_password + "]";
	}
	
	
	

}
