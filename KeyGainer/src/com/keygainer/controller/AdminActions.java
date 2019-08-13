package com.keygainer.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.keygainer.services.ContentService;
import com.keygainer.services.SubjectsServices;
import com.keygainer.services.UserServices;
import com.keygainer.table.FeedbackTable;
import com.keygainer.table.SubjectsTable;
import com.keygainer.table.UserTable;

@Controller
public class AdminActions {
@Autowired
UserServices userServices;
@Autowired
ContentService contentService;

@Autowired
SubjectsServices subjectService;
	
	@RequestMapping("all-user")
	public String AllTable(HttpServletRequest request, Model m) {
		
		HttpSession session = request.getSession();
		if(null == session.getAttribute("admin")) {
			return "redirect:/adm-panel";
		}
		else {
			List<UserTable> list = userServices.selectAllUser();
			m.addAttribute("list",list);
			return "all-user";
			
		}
		
		
	}
	
	@RequestMapping("apr-user")
	public String aprTable(HttpServletRequest request, Model m) {
		HttpSession session = request.getSession();
		if(null == session.getAttribute("admin")) {
			return "redirect:/adm-panel";
		}
		else {
			List<UserTable> list = userServices.selectAllUser();
			m.addAttribute("list",list);
			return "apr-table";
			
		}
		
		
	}
	
	@RequestMapping("approveuser/{id}")
	public String aproveUser(@PathVariable String id,HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(null == session.getAttribute("admin")) {
			return "redirect:/adm-panel";
		}
		else {
			userServices.apprUser(id);
		return "redirect:/apr-user";
			
		}
		
		
		
		
	}
	
	@RequestMapping("subjects")
	public String admSubjects(Model m,HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(null == session.getAttribute("admin")) {
			return "redirect:/adm-panel";
		}
		else {
			List<SubjectsTable> list = subjectService.selectSubjects();
		m.addAttribute("list", list);
		return "adm-subjects";
			
		}
		
		
	}
	
	@RequestMapping(value = "addsubject",method = RequestMethod.POST)
	public String addSubject(@ModelAttribute("addubject")SubjectsTable table, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(null == session.getAttribute("admin")) {
			return "redirect:/adm-panel";
		}
		else {
			subjectService.addSubject(table);
		return "redirect:/subjects";
			
		}
		
	}
	@RequestMapping(value = "feedbacks")
	public String viewFeedback(Model m,HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(null == session.getAttribute("admin")) {
			return "redirect:/adm-panel";
		}
		else {
			List<FeedbackTable> list = contentService.getFeedbacks();
		m.addAttribute("feedback",list);
		return "adm-feedback";
			
		}
		
	}
	@RequestMapping(value="feedbacks/{id}")
	public String readFeedback(@PathVariable("id")int id, Model m,HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(null == session.getAttribute("admin")) {
			return "redirect:/adm-panel";
		}
		else {
			
					FeedbackTable table = contentService.changeRead(id);
		m.addAttribute("message", table);
		return "adm-view-feedback";
		}

	}
	@RequestMapping(value="user/{id}")
	public String viewUser(@PathVariable("id")int id, Model m, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(null == session.getAttribute("admin")) {
			return "redirect:/adm-panel";
		}
		else {
			UserTable table = userServices.userById(id);
		m.addAttribute("user", table);
		return "adm-viewuser";
			
		}
		
	}
	@RequestMapping(value="blockuser/{id}")
	public String blockUser(@PathVariable("id")int id,HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(null == session.getAttribute("admin")) {
			return "redirect:/adm-panel";
		}
		else {
			userServices.blockUser(id);
		return "redirect:/user/"+id;
			
		}
		
	}
	
	@RequestMapping("test")
	public String test(Model m) {
		List<SubjectsTable> list = subjectService.selectSubjects();
		m.addAttribute("list", list);
		return "test";
	}
	
	@RequestMapping(value = "editsubject",method = RequestMethod.POST)
	public String updateSubject(@ModelAttribute("addubject")SubjectsTable table, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(null == session.getAttribute("admin")) {
			return "redirect:/adm-panel";
		}
		else {
			subjectService.updateSubject(table);
		return "redirect:/subjects";
			
		}
	}
	
	
	
	
}
