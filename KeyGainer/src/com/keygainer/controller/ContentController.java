package com.keygainer.controller;

import java.util.List;
import java.util.Objects;

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
import com.keygainer.services.UserServices;
import com.keygainer.table.CommentTable;
import com.keygainer.table.ContentTable;
import com.keygainer.table.FeedbackTable;
import com.keygainer.table.RatingTable;
import com.keygainer.table.ReplyTable;
import com.keygainer.table.SubjectsTable;
import com.keygainer.table.UserTable;

@Controller
public class ContentController {
	@Autowired
	ContentService service;
	@Autowired
	UserServices userService;

	@RequestMapping(value = "contents/{cid}")
	public String contentHome(Model m, HttpServletRequest request,@PathVariable("cid") String scid) {
		HttpSession session = request.getSession();
//		if (request.getParameter("xcvnd") == null) {
//			return "redirect:/";
//		} else
			if (isInt(scid)) {

			return "error-page";
		} else {
			int cid = Integer.parseInt(scid);

			if (null != session.getAttribute("student") || null != session.getAttribute("teacher")) {
				int id = cid;
				System.out.println("content id is"+id);
				int userid = (Integer) session.getAttribute("uid");
				Object o = service.getContentById(id);
				if (Objects.isNull(o)) {
					System.out.println("null");
					return "error-page";
				} else {
					ContentTable content = (ContentTable) o;
					UserTable user = content.getUser();
					SubjectsTable subjects = content.getSubject();
					m.addAttribute("content", content);
					m.addAttribute("subjects", subjects);
					m.addAttribute("user", user);
					int rating = service.getContentRating(id);
					int j = 5 - rating;
					m.addAttribute("i", rating);
					m.addAttribute("j", j);
					List<CommentTable> lists = service.getComment(id);
					List<ReplyTable> reply = service.getReply(id);
					m.addAttribute("commentlist", lists);
					m.addAttribute("replies", reply);

					List<RatingTable> list = service.getRating(id, userid);
					if (list.isEmpty()) {
						System.out.println("error");
						m.addAttribute("message", "Rate this article");
					} else {
						RatingTable currenttable = list.get(0);
						int currrating = currenttable.getRating();
						m.addAttribute("rating", currrating);
						m.addAttribute("message", "Your rating");
						System.out.println(currrating);
					}
				}

				return "content-page";
			} else {
				return "redirect:/";
			}
		}

	}

	@RequestMapping(value = "addrating")
	public @ResponseBody String addRating(HttpServletRequest request) {
		HttpSession session = request.getSession();
		if (null != session.getAttribute("user")) {
			UserTable user =(UserTable) session.getAttribute("user");
			System.out.println(user.getRole());
			if(user.getRole().equals("student")) {
				int userid = user.getUserID();
				int cid = Integer.parseInt(request.getParameter("contentid"));
				List<RatingTable> list = service.getRating(cid, userid);
				RatingTable table = new RatingTable();
				table.setRating(Integer.parseInt(request.getParameter("rating")));
				table.setContentID(cid);
				table.setUserID(userid);
				table.setCount(1);
				if (list.isEmpty()) {
					service.addRating(table);
				} else {
					RatingTable currenttable = list.get(0);
					table.setRatingID(currenttable.getRatingID());
					service.addRating(table);

				}

				return "1";
			}
			else {
				return "0";
			}
		} else {
			return "0";
		}

	}

	

	@RequestMapping(value = "addcomment", method = RequestMethod.POST)
	public String addComment(@RequestParam("comment") String comment,@RequestParam("contentid") String cid, HttpServletRequest request) {
		HttpSession session = request.getSession();
		CommentTable comments = new CommentTable();
		comments.setContentID(Integer.parseInt(cid));
		int userID = (int) session.getAttribute("uid");
		comments.setCommentDetail(comment);
		service.addComment(comments, userID);
		
		return "redirect:/contents/"+cid;
	}

	@RequestMapping(value = "addreply")
	public String addReply(HttpServletRequest request) {
		HttpSession session = request.getSession();
		ReplyTable table = new ReplyTable();
		String body = request.getParameter("reply");
		String commentID = request.getParameter("commentid");
		String contentid = request.getParameter("contentid");
		int userid = (int) session.getAttribute("uid");
		table.setBody(body);
		table.setCommentID(Integer.parseInt(commentID));
		service.addReply(table, userid);

		return "redirect:/contents/"+contentid;

	}

	@RequestMapping("deletereply")
	public String deleteReply(@RequestParam("id") int rid,@RequestParam("cid") int cid) {
		service.deleteReply(rid);
		return "redirect:/contents/"+cid;
	}

	@RequestMapping("deletecomment")
	public String deleteComment(@RequestParam("id") int cid,@RequestParam("cid") int contentid) {
		service.deleteComment(cid);
		return "redirect:/contents/"+contentid;
	}

	public boolean isInt(String num) {
		try {
			Integer.parseInt(num);
			return false;
		} catch (Exception e) {
			return true;
		}
	}

	@RequestMapping("contentshome/{pageid}")
	public String contentsHome(@PathVariable int pageid, Model m,HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(null!=session.getAttribute("user")) {
			int npageid = 0;
			int size = service.countContent();
			System.out.println("size is "+size);
			m.addAttribute("pagesize",size);
			if (pageid == 1) {
				int limit = npageid + 4;
				List<ContentTable> list = service.getLimitContent(npageid, limit);
				m.addAttribute("list", list);
			} else {

				npageid = pageid * pageid;
				int limit = npageid + 4;
				List<ContentTable> list = service.getLimitContent(npageid, limit);
				m.addAttribute("list", list);
			}
			return "contents-home";
		}
		else {
			return "redirect:/";
		}
	}
	@RequestMapping("profile/{id}")
	public String viewProfile(@PathVariable("id") String sid ,Model m, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if (null != session.getAttribute("student")||null != session.getAttribute("teacher")) {
			int id = Integer.parseInt(sid);
			UserTable table = userService.userById(id);
			m.addAttribute("user", table);
			if(table.getRole().equals("teacher")) {
				int count = service.countUserContent(id);
				m.addAttribute("count", count);
			}
			return "profile";
			
		}
		else {
			return "redirect:/";
		}
	}
	@RequestMapping(value="submitfeedback",method = RequestMethod.POST)
	public @ResponseBody String submitFeedback(@ModelAttribute("feedback")FeedbackTable feedback,HttpServletRequest request) {
		HttpSession session = request.getSession();
		feedback.setRead(0);
		int from =(int) session.getAttribute("uid");
		int about =Integer.parseInt(request.getParameter("about"));
		service.addFeedback(feedback, about, from);
		return "hello";
	}
	@RequestMapping("contentshome")
	public String cHome() {
		return "redirect:contentshome/1";
	}
	

}
