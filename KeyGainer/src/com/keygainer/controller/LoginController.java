package com.keygainer.controller;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.keygainer.services.ContentService;
import com.keygainer.services.PasswordTokenService;
import com.keygainer.services.UserServices;
import com.keygainer.table.ContentTable;
import com.keygainer.table.PasswordTokenTable;
import com.keygainer.table.RatingTable;
import com.keygainer.table.UserTable;

@Controller
public class LoginController {
	@Autowired
	UserServices userServices;
	@Autowired
	ContentService contentService;
	@Autowired
	PasswordTokenService passService;

	@RequestMapping("/")
	public String loginRed(HttpServletRequest request, Model m) {
		HttpSession session = request.getSession();
		if (null != session.getAttribute("user")) {
			UserTable user =(UserTable) session.getAttribute("user");
			if(user.getRole().equals("student")) {
				List<ContentTable> list = contentService.getAllContent();
				m.addAttribute("contents",list);
				return "loggedhome";
			}
			else if(user.getRole().equals("teacher")){
				List<ContentTable> list = contentService.getAllContent();
				m.addAttribute("contents",list);
				return "lecturehome";
			}
//			List<ContentTable> list = contentService.getAllContent();
//			m.addAttribute("contents",list);
//			return "loggedhome";
//		} else if (null != session.getAttribute("teacher")) {
//			return "lecturehome";
//		} else {
//			return "home";
			else {
			return "home";}
		}
		else {
			return "home";
		}
		
	}


	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(@ModelAttribute("user") UserTable user, HttpServletRequest request) {
		String role = request.getParameter("role");
		System.out.println(user.getPassword());
		int approved = Integer.parseInt(request.getParameter("approved"));
		UserTable table = userServices.saveUser(user);
		int i = table.getUserID();
		if (i > 0 && approved == 1) {
			HttpSession session = request.getSession();
			session.setAttribute(role, user.getName());
			return "redirect:/";
		} else if (i > 0 && approved == 0) {
			return "redirect:/pages/wait.html";
		} else {
			return "error";
		}

	}

	@RequestMapping(value = "/ajaxtest", method = RequestMethod.GET)
	public @ResponseBody String getMail(HttpServletRequest request) {
		String mail = request.getParameter("mailid");
		Long count = userServices.countMailService(mail);
		String result = Long.toString(count);
		return result;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public @ResponseBody String loginAction(HttpServletRequest request) {
		String password = request.getParameter("password");
		String mailid = request.getParameter("mail");
		List<UserTable> list = userServices.loginSelect(mailid, password);

		try {
			if (list.isEmpty()) {
				return "<div class='alert alert-danger' role='alert'>Invalid email/password.</div>";
			} else {
				UserTable userTable = list.get(0);
				String role = userTable.getRole();
				String name = userTable.getName();
				int uid = userTable.getUserID();
				int aproved = Integer.parseInt(userTable.getApproved());
				if(aproved==0) {
					return "<div class='alert alert-warning' role='alert'>Your Approval is pending!</div>";
				}
				else {
				HttpSession session = request.getSession();
				session.setAttribute("user", userTable);
				session.setAttribute(role, name);
				session.setAttribute(role+"uid", uid);
				session.setAttribute("uid",uid );
				return "success";
				}
			}
		} catch (Exception e) {
			return e.toString();
		}

//		else {

//		}

	}
	
	@RequestMapping("carrierreg")
	public String teachReg() {
		return "teach-regs";
	}
	@RequestMapping("register")
	public String studentRegister() {
		
		return "register";
	}
	
	
	@RequestMapping("adm-panel")
	public String admHome(HttpServletRequest request,Model m) {
		HttpSession session = request.getSession();
		if(null == session.getAttribute("admin")) {
			return "adm-log";
		}
		else {
			
			return "adm-hom";
		}
	}
	@RequestMapping("forgotpassword")
	public String forgotPassword() {
		return "forgot-password";
	}
	
	@RequestMapping("resetpass")
	public @ResponseBody String resetPassword(@RequestParam("mail")String mail) {
		Long count =userServices.countMailService(mail);
		if(count==0) {
			return "<div class=\"alert alert-error\">" + 
					"										<button type=\"button\" class=\"close\" data-dismiss=\"alert\">×</button>" + 
					"										<strong>No User found</strong> check mail id you entered" + 
					"									</div>";
		}
		else {
			 final String uuid = UUID.randomUUID().toString().replace("-", "");
			    System.out.println("uuid = " + uuid);
			 
			    Date dt = new Date();
			    Calendar c = Calendar.getInstance();
			    c.setTime(dt);
			    c.add(Calendar.DATE, 2);
			    dt = c.getTime();
			    SimpleDateFormat fdate = new SimpleDateFormat("yy-MM-dd");
			    String date = fdate.format(dt);
			    System.out.println(date);
			    
			    PasswordTokenTable table = new PasswordTokenTable();
			    table.setToken(uuid);
			    table.setExpdate(date);
			    passService.saveToken(table, mail);
			
			
			
			return "<div class=\"alert alert-success\">" + 
					"										<button type=\"button\" class=\"close\" data-dismiss=\"alert\">×</button>" + 
					"										<strong>done!</strong> check your mail for details " + 
					"									</div>";
		}
	}
	
	@RequestMapping("resetpassword/{token}")
	public String resetPassToken(@PathVariable("token")String token,Model m) {
		List<PasswordTokenTable> list = passService.getToken(token);
		if(list.isEmpty()) {
			return "error-page";
		}
		else {
			PasswordTokenTable table = list.get(0);
			m.addAttribute("token",table);
			return "resetpassword";
		}
	}
	@RequestMapping(value = "passwordchanged", method = RequestMethod.POST)
	public @ResponseBody String passwordChanged(@RequestParam("userid")int userid,@RequestParam("password")String password) {
		passService.resetPassword(userid, password);
		return "<div class=\"alert alert-success\">" + 
				"<button type=\"button\" class=\"close\" data-dismiss=\"alert\">×</button>" + 
				"<strong>Done!</strong> Now you can Login with new password" + 
				"									</div>";
	}
//	
//	
//	
//	
//	
//	
//	
//	
}
