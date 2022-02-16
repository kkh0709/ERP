package com.project.dto;

public class locationDto {
	private Integer location_id;

	
	@Override
	public String toString() {
		return "locationDto [location_id=" + location_id + "]";
	}

	public Integer getLocation_id() {
		return location_id;
	}

	public void setLocation_id(Integer location_id) {
		this.location_id = location_id;
	}
}
