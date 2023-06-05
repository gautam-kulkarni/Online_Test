package com.GREOT.controller;

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
import com.GREOT.service.QuestionService;

import ch.qos.logback.core.model.Model;
import jakarta.servlet.http.HttpSession;

@Controller
public class QuestionController {
	
	
@Autowired
QuestionService questionservice;

@Autowired
ExamService examService;

@Autowired
HttpSession httpsession;

@PostMapping("/Questions")
public ModelAndView addQuestion(@ModelAttribute ("questions")Questions question) {
	ModelAndView m = new ModelAndView();
	questionservice.saveQuestion(question);
	m.addObject("msg","Question Added");
	m.setViewName("Question");
	return m;
}

@PostMapping("/UQuestions")
public ModelAndView updatequestion(@ModelAttribute ("questions")Questions question){
	ModelAndView m=new ModelAndView();
	if(httpsession.getAttribute("user")!=null) {
	questionservice.saveQuestion(question);
	m.addObject("msg","Question Updated");
	List<Questions> l=questionservice.findAll();
	m.addObject("list",l);
	m.setViewName("ViewQuestion");
	return m;
	}
	else
	{
		m.setViewName("Login");
		return m;
	}
	
}

@RequestMapping("/Questionpage")
public String QuestionPage() {
	if(httpsession.getAttribute("user")!=null) {
		return "Question";
	}
	return "Login";
}



@RequestMapping("/goback")
public ModelAndView goback() {
	ModelAndView m=new ModelAndView();
	if(httpsession.getAttribute("user")!=null) {
		List<Exam> e=examService.findAll();
		
		m.addObject("list",e);
		m.setViewName("CreateTest");
		return m;
	}else {
		m.setViewName("Login");
	return m;
	}
}

@RequestMapping("/ViewQuestionpage")
public ModelAndView ViewQuestionpage() {
	ModelAndView mv=new ModelAndView();
	if(httpsession.getAttribute("user")!=null) {
	List<Questions> l=questionservice.findAll();
	mv.addObject("list",l);
	mv.setViewName("ViewQuestion");
	return mv;
	}
	else {
		mv.setViewName("Login");
		return mv;
	}
	
}
@GetMapping("/delete")
public ModelAndView deletequestion(@RequestParam("id") Long q_id) {
	questionservice.deleteQuestion(q_id);
	List<Questions> l=questionservice.findAll();
	ModelAndView mv=new ModelAndView();
	mv.addObject("list",l);
	mv.addObject("msg",q_id+" deleted Successfully");
	mv.setViewName("ViewQuestion");
	return mv;
}
@GetMapping("/updatepage")
public ModelAndView upadtequestionPage(@RequestParam ("questions") Long l ) 
{
	ModelAndView mv=new ModelAndView();
	if(httpsession.getAttribute("user")!=null) {
	Questions question= questionservice.findById(l);
	//System.out.println(question.getQuestion());
	mv.addObject("list",question);
	mv.setViewName("UpdateQuestion");
	return mv;
	
	}
	else {
		mv.setViewName("Login");
		return mv;
	}
}

}