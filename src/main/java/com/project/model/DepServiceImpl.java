package com.project.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.project.dao.DepDao;
import com.project.dto.DepDto;
import com.project.dto.depIdDto;
import com.project.dto.locationDto;
import com.project.dto.managerDto;
import com.project.vo.PageMaker;


@Service
public class DepServiceImpl implements DepService {

	@Autowired
	private SqlSession sql;
	
	
	@Override
	public void insertDep(DepDto dto) throws Exception {
		DepDao dao = sql.getMapper(DepDao.class);
		dao.insertDep(dto);

	}

	@Override
	public void updateDep(DepDto dto) throws Exception {
		DepDao dao = sql.getMapper(DepDao.class);
		dao.updateDep(dto);

	}

	@Override
	public void removeDep(Integer departmentId) throws Exception {
		DepDao dao = sql.getMapper(DepDao.class);
		dao.removeDep(departmentId);

	}

	@Override
	public DepDto readDep(Integer departmentId) throws Exception {
		DepDao dao = sql.getMapper(DepDao.class);

		return dao.readDep(departmentId);
	}

	@Override
	public List<DepDto> listDep(PageMaker pm) throws Exception {
		DepDao dao = sql.getMapper(DepDao.class);
		
		return dao.listDep(pm);
		
		
		
	}

	

	@Override
	public int listSearchCount(PageMaker pm) throws Exception {
		DepDao dao=sql.getMapper(DepDao.class);
		return dao.listSearchCount(pm);
		
	}

	@Override
	public List<managerDto> listManager(managerDto dto) throws Exception {
		DepDao dao = sql.getMapper(DepDao.class);
		return dao.listManager(dto);
	}

	@Override
	public List<locationDto> listLocation(locationDto dto) throws Exception {
		DepDao dao = sql.getMapper(DepDao.class);
		return dao.listLocation(dto);
	}
	
	@Override
	public List<depIdDto> listDepId(depIdDto dto) throws Exception {
		DepDao dao = sql.getMapper(DepDao.class);
		return dao.listDepId(dto);
	}
	
	@Override
	public int idCheck(String id) throws Exception {
		DepDao dao = sql.getMapper(DepDao.class);

		return dao.idCheck(id);
	}

	@Override
	public int nameCheck(String name) throws Exception {
		DepDao dao = sql.getMapper(DepDao.class);
		return dao.nameCheck(name);
	}

	
}