package com.project.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class JobHistoryDto {
	private Integer employee_id;
	private String fullname;
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private	Date start_date;
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private Date end_date;
	private String department_name;
	private String job_id;
	
	public Integer getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(Integer employee_id) {
		this.employee_id = employee_id;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	public String getDepartment_name() {
		return department_name;
	}
	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}
	public String getJob_id() {
		return job_id;
	}
	public void setJob_id(String job_id) {
		this.job_id = job_id;
	}
	
	@Override
	public String toString() {
		return "JobHistoryDto [employee_id=" + employee_id + ", fullname=" + fullname + ", start_date=" + start_date
				+ ", end_date=" + end_date + ", department_name=" + department_name + ", job_id=" + job_id + "]";
	}	
	
}
