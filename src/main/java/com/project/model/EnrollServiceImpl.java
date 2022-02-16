package com.project.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.EnrollDAO;
import com.project.dto.EnrollDTO;
import com.project.dto.EnrollJobDTO;
import com.project.dto.EnrollUpdateDTO;
import com.project.dto.EnrollUpdateDTO2;

@Service
public class EnrollServiceImpl implements EnrollService {
	@Autowired
	private SqlSession sql;
	
	@Override
	public void insertEmp(EnrollDTO dto) throws Exception {
		EnrollDAO dao = sql.getMapper(EnrollDAO.class);
		dao.insertEmp(dto);
	}

	@Override
	public void updateEmp(EnrollUpdateDTO dto) throws Exception {
		EnrollDAO dao = sql.getMapper(EnrollDAO.class);
		dao.updateEmp(dto);
	}
	@Override
	public void updateEmp2(EnrollUpdateDTO2 dto) throws Exception {
		EnrollDAO dao = sql.getMapper(EnrollDAO.class);
		dao.updateEmp2(dto);
	}

	@Override
	public void removeEmp(Integer employeeId) throws Exception {
		EnrollDAO dao = sql.getMapper(EnrollDAO.class);
		dao.removeEmp(employeeId);
	}
	@Override
	public void removeEmpHistory(Integer employeeId) throws Exception {
		EnrollDAO dao = sql.getMapper(EnrollDAO.class);
		dao.removeEmpHistory(employeeId);
	}

	@Override
	public EnrollDTO readEmp(Integer employeeId) throws Exception {
		EnrollDAO dao = sql.getMapper(EnrollDAO.class);
		return dao.readEmp(employeeId);
	}

	@Override
	public List<EnrollDTO> listEmp(EnrollDTO dto) throws Exception {
		EnrollDAO dao = sql.getMapper(EnrollDAO.class);
		return dao.listEmp(dto);
	}

	@Override
	public List<EnrollDTO> listDpt(EnrollDTO dto) throws Exception {
		EnrollDAO dao = sql.getMapper(EnrollDAO.class);
		return dao.listDpt(dto);
	}

	@Override
	public List<EnrollJobDTO> listJobs(EnrollJobDTO dto) throws Exception {
		EnrollDAO dao = sql.getMapper(EnrollDAO.class);
		return dao.listJobs(dto);
	}

	

}
