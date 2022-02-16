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
import com.project.dto.EnrollJobDTO;
import com.project.dto.EnrollUpdateDTO;
import com.project.dto.EnrollUpdateDTO2;
import com.project.model.EnrollService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/project/*")
public class EnrollController {
	@Autowired
	private EnrollService es;
	
	private static final Logger logger = LoggerFactory.getLogger(EnrollController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws Exception 
	 */
	@RequestMapping(value = "/enroll", method = RequestMethod.GET)
	public String list(EnrollDTO dto,EnrollJobDTO job, Model model) throws Exception {
		model.addAttribute("list",es.listEmp(dto));
		model.addAttribute("dpt", es.listDpt(dto));
		model.addAttribute("job", es.listJobs(job));
		
		return "/project/Enroll";
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insertEmp(EnrollDTO dto, RedirectAttributes rttr) throws Exception {
		es.insertEmp(dto);
		return "redirect:/project/enroll";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updateEmp(EnrollUpdateDTO dto, Model model) throws Exception {
		System.out.println(dto);
		es.updateEmp(dto);
		System.out.println("등록완료");
		return "redirect:/project/enroll";
	}
	@RequestMapping(value = "/update2", method = RequestMethod.POST)
	public String updateEmp2(EnrollUpdateDTO2 dto, Model model) throws Exception {
		System.out.println((dto));
		es.updateEmp2(dto);
		System.out.println("등록완료2");
		return "redirect:/project/enroll";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String deleteEmp(@RequestParam("employee_id") Integer employee_id, RedirectAttributes rttr) throws Exception {
		es.removeEmpHistory(employee_id);
		es.removeEmp(employee_id);
		return "redirect:/project/enroll";
	}
	
}
