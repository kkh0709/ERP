package com.project.dto;

import java.sql.Date;

public class EnrollUpdateDTO2 {
	private Integer employee_id;
	private String first_name;
	private String last_name;
	private String email;
	private String phone_number;
	private Integer salary;
	private Integer commission_pct;
	private Integer manager_id;
	private Date hire_date;
	
	public Date getHire_date() {
		return hire_date;
	}
	public void setHire_date(Date hire_date) {
		this.hire_date = hire_date;
	}
	public Integer getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(Integer employee_id) {
		this.employee_id = employee_id;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
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
	public Integer getSalary() {
		return salary;
	}
	public void setSalary(Integer salary) {
		this.salary = salary;
	}
	public Integer getCommission_pct() {
		return commission_pct;
	}
	public void setCommission_pct(Integer commission_pct) {
		this.commission_pct = commission_pct;
	}
	public Integer getManager_id() {
		return manager_id;
	}
	public void setManager_id(Integer manager_id) {
		this.manager_id = manager_id;
	}
	@Override
	public String toString() {
		return "EnrollUpdateDTO2 [employee_id=" + employee_id + ", first_name=" + first_name + ", last_name="
				+ last_name + ", email=" + email + ", phone_number=" + phone_number + ", salary="
				+ salary + ", commission_pct=" + commission_pct + ", manager_id=" + manager_id + "]";
	}
	
		
}
