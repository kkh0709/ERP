package com.project.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.EnrollDAO;
import com.project.dao.JobsDAO;
import com.project.dto.JobsDTOS;

@Service 
public class JobsServiceImpl implements JobsService {
	
	@Autowired
	private SqlSession sql;

	@Override
	public void insertJobs(JobsDTOS dto) throws Exception {
	
		JobsDAO dao = sql.getMapper(JobsDAO.class);
		dao.insertJobs(dto);
	}

	@Override
	public void updateJobs(JobsDTOS dto) throws Exception {
	
		JobsDAO dao = sql.getMapper(JobsDAO.class);
		dao.updateJobs(dto);
	}
	
	@Override
	public void deleteJobs(String dto) throws Exception {
	
		JobsDAO dao = sql.getMapper(JobsDAO.class);
		dao.removeJobs(dto);
	}
	
	@Override
	public JobsDTOS readJobs(String jobs_id) throws Exception {
		JobsDAO dao = sql.getMapper(JobsDAO.class);
		return dao.readJobs(jobs_id);
	}

	@Override
	public List<JobsDTOS> listJobs(JobsDTOS dto) throws Exception {
		JobsDAO dao = sql.getMapper(JobsDAO.class);
		return dao.listJobs(dto);
	}
	
	

}
