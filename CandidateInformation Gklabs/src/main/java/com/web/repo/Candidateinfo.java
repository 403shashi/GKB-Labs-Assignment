package com.web.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.web.model.CandidateDetails;
import com.web.service.candidatedetailsImp;

public interface Candidateinfo extends JpaRepository<CandidateDetails, Long> {
	

}
