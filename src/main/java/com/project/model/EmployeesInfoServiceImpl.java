package com.project.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.IEmployeesInfoDao;
import com.project.dto.EmployeesInfoDto;
import com.project.dto.JobHistoryDto;
import com.project.dto.JobHistoryOriginDto;
import com.project.dto.JobsDto;
import com.project.dto.DepartmentInfoDto;

@Service
public class EmployeesInfoServiceImpl implements IEmployeesInfoService {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<EmployeesInfoDto> selectEmpList() throws Exception {
		IEmployeesInfoDao dao = sqlSession.getMapper(IEmployeesInfoDao.class);
		return dao.selectEmpList();
	}

	@Override
	public List<DepartmentInfoDto> departList() throws Exception {
		IEmployeesInfoDao dao = sqlSession.getMapper(IEmployeesInfoDao.class);
		return dao.departList();
	}

	@Override
	public List<JobHistoryDto> jobHistory(int employee_id) throws Exception {
		IEmployeesInfoDao dao = sqlSession.getMapper(IEmployeesInfoDao.class);
		return dao.jobHistory(employee_id);
	}

	@Override
	public EmployeesInfoDto selectEmp(int employee_id) throws Exception {
		IEmployeesInfoDao dao = sqlSession.getMapper(IEmployeesInfoDao.class);
		return dao.selectEmp(employee_id);
	}

	@Override
	public List<JobsDto> jobList() throws Exception {
		IEmployeesInfoDao dao = sqlSession.getMapper(IEmployeesInfoDao.class);
		return dao.jobList();
	}

	@Override
	public void create(JobHistoryOriginDto dto) throws Exception {
		IEmployeesInfoDao dao = sqlSession.getMapper(IEmployeesInfoDao.class);
		dao.create(dto);
	}

	@Override
	public void delete(JobHistoryOriginDto dto) throws Exception {
		IEmployeesInfoDao dao = sqlSession.getMapper(IEmployeesInfoDao.class);
		dao.delete(dto);
	}

	@Override
	public void update(JobHistoryOriginDto dto) throws Exception {
		IEmployeesInfoDao dao = sqlSession.getMapper(IEmployeesInfoDao.class);
		dao.update(dto);
	}	
}
