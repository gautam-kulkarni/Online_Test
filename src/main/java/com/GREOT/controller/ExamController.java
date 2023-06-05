package com.GREOT.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.GREOT.model.Exam;
import com.GREOT.model.Questions;
import com.GREOT.service.ExamService;

@Controller
public class ExamController {
	
	@Autowired
	ExamService examservice;

	/*@RequestMapping("/Exams")
	public String examPage() 
	{
		return "ExamSchedule";
	}*/
	
	@PostMapping("/ExamS")
	public ModelAndView addExam(@ModelAttribute ("exam")Exam exam) {
		examservice.saveExam(exam);
		ModelAndView mv=new ModelAndView();
		List<Exam> e=examservice.findAll();
		mv.addObject("list",e);
		mv.setViewName("CreateTest");
		return mv;
	}
	
	@RequestMapping("/ExamSchedulepage")
	public ModelAndView ExamSchedulepage() {
		List<Exam> e=examservice.findAll();
		ModelAndView mv=new ModelAndView();
		mv.addObject("list",e);
		mv.setViewName("CreateTest");
		return mv;
		
	}
	
	@GetMapping("/deleted")
	public ModelAndView deleteSchedulepage(@RequestParam("id") Integer E_id) {
		examservice.deleteSchedule(E_id);
		List<Exam> l=examservice.findAll();
		ModelAndView mv=new ModelAndView();
		mv.addObject("list",l);
		mv.addObject("msg"," Schedule deleted");
		mv.setViewName("CreateTest");
		return mv;
	}
}
