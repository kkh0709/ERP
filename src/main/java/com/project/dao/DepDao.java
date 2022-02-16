package com.project.dao;

import java.util.List;

import com.project.dto.DepDto;
import com.project.dto.depIdDto;
import com.project.dto.locationDto;
import com.project.dto.managerDto;
import com.project.vo.PageMaker;

public interface DepDao {
	public void insertDep(DepDto dto) throws Exception;

	public void updateDep(DepDto dto) throws Exception;

	public void removeDep(Integer departmentId) throws Exception;

	public DepDto readDep(Integer departmentId) throws Exception;

	public List<DepDto> listDep(PageMaker pm) throws Exception;

	public List<managerDto> listManager(managerDto dto) throws Exception;

	public List<locationDto> listLocation(locationDto dto) throws Exception;
	
	public List<depIdDto> listDepId(depIdDto dto) throws Exception;

	public int listSearchCount(PageMaker pm);

	public int idCheck(String id) throws Exception;
	
	public int nameCheck(String name) throws Exception;
}
