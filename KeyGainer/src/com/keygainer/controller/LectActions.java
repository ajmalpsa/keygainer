package com.keygainer.controller;

import java.io.File;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.keygainer.services.ContentService;
import com.keygainer.services.SubjectsServices;
import com.keygainer.table.ContentTable;
import com.keygainer.table.SubjectsTable;
import com.keygainer.table.UserTable;

@Controller
public class LectActions {
	@Autowired
	SubjectsServices subServices;
	@Autowired
	ContentService conService;
	
	private int uid;
	private int subid;
	
	@RequestMapping("addcontent")
	public String addContent(Model m,HttpServletRequest request) {
		
		 HttpSession session = request.getSession();
		 if(null!=session.getAttribute("user")) {
			 UserTable user =(UserTable) session.getAttribute("user");
			 if(user.getRole().equals("teacher")) {
				 List<SubjectsTable> list  = subServices.selectSubjects();
					m.addAttribute("list",list);
					int uid =(Integer) session.getAttribute("uid");
					setUid(uid);
					return "lect-addcontent";
			 }
			 else{
				 return "redirect:/";
			 }
		 }
		 else{
			 return "redirect:/";
		 }
		
	}
	
	@RequestMapping(value = "uploadfiles")
	public String uploadFile(@ModelAttribute(name = "Content")ContentTable table, HttpServletRequest  request) {
		final String UPLOAD_DIRECTORY = "/home/doctor/Documents/EclipseWorks/KeyGainer/WebContent/resources/uploadedvideo";
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		if (isMultipart) {
	           // Create a factory for disk-based file items
	           FileItemFactory factory = new DiskFileItemFactory();

	           // Create a new file upload handler
	           ServletFileUpload upload = new ServletFileUpload(factory);
	           try {
	                   // Parse the request
	                   List<FileItem> multiparts = upload.parseRequest(request);

	                   for (FileItem item : multiparts) {
	                	   if(item.isFormField()) {
	                		   if(item.getFieldName().equals("title")) {
	                			   table.setTitle(item.getString());
	                		   }
	                		   if(item.getFieldName().equals("content")) {
	                			   table.setCtext(item.getString());
	                		   }
	                		   if(item.getFieldName().equals("SubjectID")) {
	                			   setSubid(Integer.parseInt(item.getString()));
	                		   }
	                	   }
	                   else if (!item.isFormField()) {
	                       // String name = new File(item.getName()).getName();
	                        Random random = new Random();
	                        int NewName = random.nextInt(10000);
	                        System.out.println(NewName);
	                        item.write(new File(UPLOAD_DIRECTORY + File.separator + NewName+".mp4"));
	                        String fileLoc =  "/resources/uploadedvideo/"+NewName+".mp4";
	                        table.setVideoURL(fileLoc);
	                        System.out.println("lect action"+getUid());
//	                        table.setUploaderID(getUid());
	                        conService.addContent(table,getSubid(),getUid());
	                      
	                        
	                     }
	                   }
	           } 
	           catch (Exception e) 
	           {
	             System.out.println("File upload failed"+e);
	           }
	   }
			return "redirect:/addcontent";

	}

	public int getSubid() {
		return subid;
	}

	public void setSubid(int subid) {
		this.subid = subid;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}


}
