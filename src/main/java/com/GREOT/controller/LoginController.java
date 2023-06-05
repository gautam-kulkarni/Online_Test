package com.GREOT.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.GREOT.model.Exam;
import com.GREOT.model.Registration;
import com.GREOT.repository.RegistrationRepo;
import com.GREOT.service.ExamService;
import com.GREOT.service.RegistrationService;

import jakarta.servlet.http.HttpSession;


@Controller
public class LoginController {

	
@Autowired
RegistrationService registrationservice;
@Autowired
ExamService examService;
@Autowired
HttpSession httpsession;


	@PostMapping("/Login")
	public String Check(@ModelAttribute Registration registration,Model m)
	{
		//System.out.println("hello");
	String checkRegistration=registrationservice.checkRegistration(registration.getEmail(),registration.getPassword());
	if(checkRegistration!=null)
	{
	
		if(checkRegistration.equals("password wrong")) {
			m.addAttribute("msg", checkRegistration);
			
			return "Login";
		}
		else {
			List<Exam> e=examService.findAll();
			m.addAttribute("list",e);
			m.addAttribute("msg", checkRegistration);
			return "CreateTest";
		}
	}
	else
	{
	String msg="User not exists....";
	m.addAttribute("msg", msg);
	return "Login";
	}
	
	}

	@RequestMapping("/Login")
	public String loginPage() {
		return "Login";
	}
	@RequestMapping("/Home")
	public String Homepage() {
		return "Home";
	}
	@GetMapping("/Registerpage")
	public String registerpage() {
		return "Registerpage";
	}
	
	@GetMapping("/CreateTest")
	public String createtestpage() {
		if(httpsession.getAttribute("user")!=null) {
			return "CreateTest";
		}
		return "Login";
	}
	
	@GetMapping("/Exams")
	public String examPage() 
	{
		return "ExamSchedule";
	}
	
	@GetMapping("/Questions")
	public String Questionpage() {
		if(httpsession.getAttribute("user")!=null) {
			return "Question";
		}
		return "Login";
	}
	
	@GetMapping("/ForgotPassword")
	public String frogetpassword() {
		return "ForgotPassword";
	}
	
	@RequestMapping("/Register")
	public String registeruser(@ModelAttribute ("registration")Registration registration, ModelMap model) {
		registrationservice.saveRegistration(registration);
		return "Login";
	}
	@GetMapping("/logout")
	public ModelAndView logout() {
		httpsession.removeAttribute("user");
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg","Successfully Logout");
		mv.setViewName("Home");
		return mv;
	}
	@PostMapping("changepassword")
	public ModelAndView changepass(@RequestParam String email,@RequestParam String userOldPassword,@RequestParam String password)
	{
		ModelAndView mv = new ModelAndView();
		if(httpsession.getAttribute("user")!=null)
		{
			Registration registration=registrationservice.changeRegistration(email, userOldPassword, password);
			if(registration!=null) {
				mv.addObject("msg","password changed successfully");
				mv.setViewName("Login");
				return mv;
			}
			else {
				mv.addObject("msg","password is wrong");
				mv.setViewName("ForgotPassword");
				return mv;
			}
		}
		else	
		{
			mv.addObject("msg","User not Found!");
			mv.setViewName("Login");
			return mv;
		}
	}
	
}