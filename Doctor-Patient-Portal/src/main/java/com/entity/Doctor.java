package com.entity;

public class Doctor {

	private int id;
	private String full_name;
	private String dateOfBirth;
	private String qualification;
	private String specialist;
	private String email;
	private String phone;
	private String password;
	
	
	public Doctor() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	public Doctor(int id, String full_name, String dateOfBirth, String qualification, String specialist, String email,
			String phone, String password) {
		super();
		this.id = id;
		this.full_name = full_name;
		this.dateOfBirth = dateOfBirth;
		this.qualification = qualification;
		this.specialist = specialist;
		this.email = email;
		this.phone = phone;
		this.password = password;
	}


	public Doctor(String full_name, String dateOfBirth, String qualification, String specialist, String email,
			String phone, String password) {
		super();
		this.full_name = full_name;
		this.dateOfBirth = dateOfBirth;
		this.qualification = qualification;
		this.specialist = specialist;
		this.email = email;
		this.phone = phone;
		this.password = password;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getFullName() {
		return full_name;
	}


	public void setFullName(String full_name) {
		this.full_name = full_name;
	}


	public String getDateOfBirth() {
		return dateOfBirth;
	}


	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}


	public String getQualification() {
		return qualification;
	}


	public void setQualification(String qualification) {
		this.qualification = qualification;
	}


	public String getSpecialist() {
		return specialist;
	}


	public void setSpecialist(String specialist) {
		this.specialist = specialist;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
