package com.GREOT.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.GREOT.model.Questions;
import com.GREOT.model.Registration;
import com.GREOT.repository.QuestionRepo;
import com.GREOT.repository.RegistrationRepo;

@Service
@Transactional
public class QuestionService {
	
	@Autowired
	QuestionRepo questionrepo;
	
	public void saveQuestion(Questions questions) 
	{
		questionrepo.save(questions);
	}
	public void updateQuestion(Questions q_id)
	{
		questionrepo.save(q_id);
	}
	public List<Questions> findAll(){
		List<Questions> l= questionrepo.findAll();
		return l;
		}
	public void deleteQuestion(Long q_id)
	{
		questionrepo.deleteById(q_id);
	}
	public Questions findById(Long id){
		return  questionrepo.findById(id).get();
	}
	
	
}
