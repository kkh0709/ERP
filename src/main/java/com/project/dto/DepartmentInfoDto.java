package com.project.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class DepartmentInfoDto {
	private int department_id;    
	private String department_name;  
	private int manamger_id;    
	private String location_id;
	
	public int getDepartment_id() {
		return department_id;
	}
	public void setDepartment_id(int department_id) {
		this.department_id = department_id;
	}
	public String getDepartment_name() {
		return department_name;
	}
	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}
	public int getManamger_id() {
		return manamger_id;
	}
	public void setManamger_id(int manamger_id) {
		this.manamger_id = manamger_id;
	}
	public String getLocation_id() {
		return location_id;
	}
	public void setLocation_id(String location_id) {
		this.location_id = location_id;
	}
	@Override
	public String toString() {
		return "departmentInfoDto [department_id=" + department_id + ", department_name=" + department_name
				+ ", manamger_id=" + manamger_id + ", location_id=" + location_id + "]";
	} 
	
}