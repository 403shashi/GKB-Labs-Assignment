package com.web.service;


import java.util.List;

import com.web.model.CandidateDetails;

public interface CandidateService {
	
	public CandidateDetails saveDetails(CandidateDetails details);
	
	public List<CandidateDetails> getAllCandidates();
    
}
