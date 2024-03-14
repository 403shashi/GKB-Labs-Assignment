package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import com.web.model.CandidateDetails;
import com.web.service.candidatedetailsImp;


@Controller
public class CandidateInfo {
	@Autowired
	private candidatedetailsImp service;
	
	@RequestMapping("/")
	public String homePage() {
		return "home";
		
	}
	@RequestMapping("/form")
    public String candidateForm() {
		return "form";
		
	}
	
	
	@RequestMapping("/register")
	 public String CandidateDetails(CandidateDetails details) {
		CandidateDetails d=service.saveDetails(details);
		
		return "CandidateSuccess";
		
	}
	@RequestMapping("/reg")
    public String CandidateDetails() {
		return "CandidateInfo";
	}
		
		
	
	@RequestMapping("/CandidateList")
	public String viewAllCandidates(ModelMap model) {
		model.put("candidates", service.getAllCandidates());
		return "CandidateList";
	}
}
	
	