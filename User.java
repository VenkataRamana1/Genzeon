package org.websparrow.model;

public class User {

	// Generate Getters and Setters...
	private String password,email,fullname,role;
	private int userid;
	

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getFullname() {
		return fullname;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	
}
