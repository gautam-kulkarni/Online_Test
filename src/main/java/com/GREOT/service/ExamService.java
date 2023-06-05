package com.GREOT.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.GREOT.model.Exam;

import com.GREOT.repository.ExamRepo;

@Service
@Transactional
public class ExamService {
	
	@Autowired
	ExamRepo examrepo;
	
	public void saveExam(Exam exam) 
	{
		examrepo.save(exam);
	}
	
	public List<Exam> findAll(){
		List<Exam> e= examrepo.findAll();
		return e;
		}
	public void deleteSchedule(Integer E_id)
	{
		examrepo.deleteById(E_id);
	}
}
