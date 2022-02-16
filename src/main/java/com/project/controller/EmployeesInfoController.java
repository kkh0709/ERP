package com.project.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.project.dto.JobHistoryOriginDto;
import com.project.model.IEmployeesInfoService;

@Controller
public class EmployeesInfoController {
	@Autowired
	IEmployeesInfoService service;
	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	
	@RequestMapping(value = "/employee_info", method = RequestMethod.GET)
	public String employeeInfoGet(Model model) throws Exception {
		model.addAttribute("employees",service.selectEmpList());
		model.addAttribute("departments",service.departList());
		return "employee_info";
	}
	
	@RequestMapping(value = "/employee_info", method = RequestMethod.POST)
	public String employeeInfoPost(Model model,int employee_id) throws Exception {
		model.addAttribute("employees",service.selectEmpList());
		model.addAttribute("departments",service.departList());
		model.addAttribute("dh",service.jobHistory(employee_id));
		model.addAttribute(service.selectEmp(employee_id));
		return "employee_info";
	}
	
	@RequestMapping(value = "/dhcreate", method = RequestMethod.POST)
	public String dhcreatePost(int employee_id,RedirectAttributes rttr) throws Exception {
		rttr.addFlashAttribute("flag", 1);
		rttr.addFlashAttribute(service.selectEmp(employee_id));
		rttr.addFlashAttribute("departments",service.departList());
		rttr.addFlashAttribute("jobs",service.jobList());
		return "redirect:employee_info";
	}
	
	@RequestMapping(value = "/dhcreateSuccess", method = RequestMethod.POST)
	public String dhcreate(JobHistoryOriginDto jobhistory,RedirectAttributes rttr) throws Exception {
		service.create(jobhistory);
		int employee_id = jobhistory.getEmployee_id();
		rttr.addFlashAttribute("dh",service.jobHistory(employee_id));
		rttr.addFlashAttribute(service.selectEmp(employee_id));
		rttr.addFlashAttribute("msg", "success");
		return "redirect:employee_info";
	}
	
	@RequestMapping(value = "/dhdelete", method = RequestMethod.POST)
	public String dhdeletePOST(int employee_id,RedirectAttributes rttr) throws Exception {
		rttr.addFlashAttribute("flag", 2);
		rttr.addFlashAttribute("dh",service.jobHistory(employee_id));
		rttr.addFlashAttribute(service.selectEmp(employee_id));
		return "redirect:employee_info";
	}
	
	@RequestMapping(value = "/dhdeleteSuccess", method = RequestMethod.POST)
	public String dhdelete(int[] employee_id,String[] job_id,RedirectAttributes rttr) throws Exception {
		for(int i=0;i<employee_id.length;i++) {
			JobHistoryOriginDto jobhistory = new JobHistoryOriginDto();
			jobhistory.setEmployee_id(employee_id[i]);
			jobhistory.setJob_id(job_id[i]);
			service.delete(jobhistory);		
		}			
		rttr.addFlashAttribute("msg", "success");
		return "redirect:employee_info";
	}
	
	@RequestMapping(value = "/dhupdate", method = RequestMethod.POST)
	public String dhupdatePOST(int employee_id,RedirectAttributes rttr) throws Exception {
		rttr.addFlashAttribute("flag", 3);
		rttr.addFlashAttribute("departments",service.departList());
		rttr.addFlashAttribute("jobs",service.jobList());
		rttr.addFlashAttribute("dh",service.jobHistory(employee_id));
		rttr.addFlashAttribute(service.selectEmp(employee_id));
		return "redirect:employee_info";
	}
	
	@RequestMapping(value = "/dhupdateSuccess", method = RequestMethod.POST)
	public String dhupdate(int[]employee_id,String[] job_id,String[] department_id,
			String[] start_date,String[] end_date,RedirectAttributes rttr) throws Exception {
		for(int i=0;i<employee_id.length;i++) {
			JobHistoryOriginDto jh = new JobHistoryOriginDto();
			jh.setEmployee_id(employee_id[i]);
			jh.setJob_id(job_id[i]);
			jh.setDepartment_id(department_id[i]);			
			Date startDate=new Date(format.parse(start_date[i]).getTime());
			jh.setStart_date(startDate);
			Date endDate=new Date(format.parse(end_date[i]).getTime());
			jh.setEnd_date(endDate);		
			service.update(jh);
		}
		rttr.addFlashAttribute("msg", "success");
		return "redirect:employee_info";
	}
	
}
