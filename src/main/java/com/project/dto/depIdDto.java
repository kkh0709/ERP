package com.project.dto;

public class depIdDto {
	private Integer department_id;

	@Override
	public String toString() {
		return "depIdDto [department_id=" + department_id + "]";
	}

	public Integer getDepartment_id() {
		return department_id;
	}

	public void setDepartment_id(Integer department_id) {
		this.department_id = department_id;
	}
}
