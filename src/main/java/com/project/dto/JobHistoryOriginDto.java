package com.project.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class JobHistoryOriginDto {
	private Integer employee_id;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private	Date start_date;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date end_date;	
	private String job_id;
	private String department_id;
	public Integer getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(Integer employee_id) {
		this.employee_id = employee_id;
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
	public String getJob_id() {
		return job_id;
	}
	public void setJob_id(String job_id) {
		this.job_id = job_id;
	}
	public String getDepartment_id() {
		return department_id;
	}
	public void setDepartment_id(String department_id) {
		this.department_id = department_id;
	}
	@Override
	public String toString() {
		return "JobHistoryOriginDto [employee_id=" + employee_id + ", start_date=" + start_date + ", end_date="
				+ end_date + ", job_id=" + job_id + ", department_id=" + department_id + "]";
	}
	
	
}
