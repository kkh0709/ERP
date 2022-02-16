package com.project.model;

import java.util.List;

import com.project.dto.EnrollDTO;
import com.project.dto.EnrollJobDTO;
import com.project.dto.EnrollUpdateDTO;
import com.project.dto.EnrollUpdateDTO2;

public interface EnrollService {
	public void insertEmp(EnrollDTO dto) throws Exception;
	public void updateEmp(EnrollUpdateDTO dto) throws Exception;
	public void updateEmp2(EnrollUpdateDTO2 dto) throws Exception;
	public void removeEmp(Integer employeeId) throws Exception;
	public void removeEmpHistory(Integer employeeId) throws Exception;
	public EnrollDTO readEmp(Integer employeeId) throws Exception;
	public List<EnrollDTO> listEmp(EnrollDTO dto) throws Exception;
	public List<EnrollDTO> listDpt(EnrollDTO dto) throws Exception;
	public List<EnrollJobDTO> listJobs(EnrollJobDTO dto) throws Exception;
}
