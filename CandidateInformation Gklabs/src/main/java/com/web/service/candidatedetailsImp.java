package com.web.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.web.model.CandidateDetails;
import com.web.repo.Candidateinfo;
@Service
public class candidatedetailsImp implements CandidateService {
	@Autowired
	private Candidateinfo repo;

	/*------------INSERTING DETAILS IN DATABASE--------------*/
	@Override
	public CandidateDetails saveDetails(CandidateDetails details) {
			CandidateDetails details1 =repo.save(details);
			return details1;
	}

	/*Reteriving records in a list format*/
	@Override
	public List<CandidateDetails> getAllCandidates() {
		
    List<CandidateDetails>allcandidates=repo.findAll();
		
		return allcandidates;
	}

	}
	
