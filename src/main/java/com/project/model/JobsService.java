package com.project.model;

import java.util.List;

import com.project.dto.JobsDTOS;

public interface JobsService {

	

	public void insertJobs(JobsDTOS dto) throws Exception;
	public void updateJobs(JobsDTOS dto) throws Exception;  
	public void deleteJobs(String dto) throws Exception;  
	public JobsDTOS readJobs(String jobs_id) throws Exception;
	public List<JobsDTOS> listJobs(JobsDTOS dto) throws Exception;
	
	
}
