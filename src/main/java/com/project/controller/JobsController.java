package com.project.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.dto.EnrollDTO;
import com.project.dto.EnrollUpdateDTO;
import com.project.dto.JobsDTOS;
import com.project.model.JobsService;

@Controller
@RequestMapping("/project/*")
public class JobsController {
	
	@Autowired
	private JobsService JobsService;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/jobs", method = RequestMethod.GET)
	public String list(JobsDTOS dto, Model model) throws Exception {
		model.addAttribute("jobs",JobsService.listJobs(dto));
		
		return "/project/jobs";
	}
	
	
	
	@RequestMapping(value = "/insertJobs", method = RequestMethod.POST)
	public String insertJobs(JobsDTOS dto, RedirectAttributes rttr) throws Exception {
		System.out.println(dto);
		JobsService.insertJobs(dto);
		return "redirect:/project/jobs";
	}
	
	@RequestMapping(value = "/updateJobs", method = RequestMethod.GET)
	public String updateJobsGet(JobsDTOS dto, Model model) throws Exception {
		return "/project/updateJobs";
	}
	
	@RequestMapping(value = "/updateJobs", method = RequestMethod.POST)
	public String updateJobs(JobsDTOS dto, Model model) throws Exception {
				System.out.println(dto);
				JobsService.updateJobs(dto);
		return "redirect:/project/jobs";
	}
	
	@RequestMapping(value = "/removeJobs", method = RequestMethod.POST)
	public String deleteEmp(@RequestParam("job_id") String job_id, RedirectAttributes rttr) throws Exception {
		System.out.println(job_id);
		JobsService.deleteJobs(job_id);
		return "redirect:/project/jobs";
	}
	
}
