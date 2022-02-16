package com.project.model;

import java.util.List;

import com.project.dto.EmployeesInfoDto;
import com.project.dto.JobHistoryDto;
import com.project.dto.JobHistoryOriginDto;
import com.project.dto.JobsDto;
import com.project.dto.DepartmentInfoDto;

public interface IEmployeesInfoService {
	public List<EmployeesInfoDto> selectEmpList() throws Exception;
	public List<DepartmentInfoDto> departList() throws Exception;
	public List<JobHistoryDto> jobHistory(int employee_id) throws Exception;
	public List<JobsDto> jobList() throws Exception;
	public EmployeesInfoDto selectEmp(int employee_id) throws Exception;
	public void create(JobHistoryOriginDto dto) throws Exception;
	public void delete(JobHistoryOriginDto dto) throws Exception;
	public void update(JobHistoryOriginDto dto) throws Exception;
}
