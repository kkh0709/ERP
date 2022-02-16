package com.project.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class EmployeesInfoDto {
	private int employee_id;    
	private String fullname;     
	private String email;          
	private String phone_number;
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private Date hire_date;     
	private String job_id;    
	private String department_name;
	
	public int getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(int employee_id) {
		this.employee_id = employee_id;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone_number() {
		return phone_number;
	}
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	public Date getHire_date() {
		return hire_date;
	}
	public void setHire_date(Date hire_date) {
		this.hire_date = hire_date;
	}
	public String getJob_id() {
		return job_id;
	}
	public void setJob_id(String job_id) {
		this.job_id = job_id;
	}
	public String getDepartment_name() {
		return department_name;
	}
	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}
	
	@Override
	public String toString() {
		return "EmployeesInfoDto [employee_id=" + employee_id + ", fullname=" + fullname + ", email=" + email
				+ ", phone_number=" + phone_number + ", hire_date=" + hire_date + ", job_id=" + job_id
				+ ", department_name=" + department_name + "]";
	}
   	
	
}