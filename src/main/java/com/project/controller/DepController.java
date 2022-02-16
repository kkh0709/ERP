package com.project.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.vo.PageMaker;
import com.project.dto.DepDto;
import com.project.dto.depIdDto;
import com.project.dto.locationDto;
import com.project.dto.managerDto;
import com.project.model.DepService;

@Controller

@RequestMapping("/dep/*")
public class DepController {

	@Autowired
	private DepService ds;

	private static final Logger logger = LoggerFactory.getLogger(DepController.class);

	@RequestMapping(value = "/deplist", method = RequestMethod.GET)
	public String listDep(PageMaker pm, Model model, locationDto loDto, managerDto maDto, depIdDto idDto)
			throws Exception {

		List<DepDto> list = ds.listDep(pm);

		model.addAttribute("listDep", list);
		model.addAttribute("listManager", ds.listManager(maDto));
		model.addAttribute("listLocation", ds.listLocation(loDto));
		model.addAttribute("listDepId", ds.listDepId(idDto));
		pm.setTotalCount(ds.listSearchCount(pm));

		return "/dep/deplist";

	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insertDep(DepDto dto, RedirectAttributes rttr, PageMaker pm, locationDto loDto, managerDto maDto)
			throws Exception {
		ds.insertDep(dto);

		List<DepDto> list = ds.listDep(pm);

//		rttr.addFlashAttribute("listManager", ds.listManager(maDto));
//		rttr.addFlashAttribute("listLocation", ds.listLocation(loDto));
		rttr.addFlashAttribute("listDep", list);
		pm.setTotalCount(ds.listSearchCount(pm));
		return "redirect:/dep/deplist";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updateDep(DepDto dto, RedirectAttributes rttr, PageMaker pm) throws Exception {
		ds.updateDep(dto);
		List<DepDto> list = ds.listDep(pm);

		rttr.addFlashAttribute("listDep", list);
		pm.setTotalCount(ds.listSearchCount(pm));
		return "redirect:/dep/deplist";
	}

	@RequestMapping(value = "/remove", method = RequestMethod.POST)
	public String removeDep(int department_id, RedirectAttributes rttr, PageMaker pm) throws Exception {
		ds.removeDep(department_id);
		List<DepDto> list = ds.listDep(pm);

		rttr.addFlashAttribute("listDep", list);
		pm.setTotalCount(ds.listSearchCount(pm));
		return "redirect:/dep/deplist";
	}

	@ResponseBody
	@RequestMapping(value = "/depIdCheck", method = RequestMethod.POST)
	public String depIdCheck(String id) throws Exception {

		int result = ds.idCheck(id);

		if (result != 0) {
			return "fail";
		} else {
			return "success";
		}

	}

	@ResponseBody
	@RequestMapping(value = "/depNameCheck", method = RequestMethod.POST)
	public String depNameCheck(String name) throws Exception {

		int result = ds.nameCheck(name);
		
		
		
		if (result != 0) {
			return "fail";
		} else {
			return "success";
		}

	}
}
