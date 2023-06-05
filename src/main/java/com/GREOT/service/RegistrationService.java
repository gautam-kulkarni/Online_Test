package com.GREOT.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.GREOT.model.Registration;
import com.GREOT.repository.RegistrationRepo;

import jakarta.servlet.http.HttpSession;

@Service
@Transactional
public class RegistrationService 
{
	@Autowired
	RegistrationRepo registrationrepo;
	@Autowired
	HttpSession httpSession;
	
	
	public void saveRegistration(Registration registration) 
	{
		registrationrepo.save(registration);
	}
	
	public Registration changeRegistration(String email,String oldpass,String newpass)
	{
		Optional<Registration> s=registrationrepo.findByEmail(email);
		if(s.isPresent())
		{
		Registration registration2=s.get();
	
			if(registration2.getPassword().equals(oldpass)) {
				registration2.setPassword(newpass);
				registration2.setConfirm_password(newpass);
				return registrationrepo.save(registration2);
			}
			else
			{
				return null;
			}
		}
		else
		{
			return null;
		}
	}
	public String checkRegistration(String email,String password)
	{
		Optional<Registration> r=registrationrepo.findByEmail(email);
		if(r.isPresent())
		{
			Registration r1=r.get();
//			System.out.print(r1);
			if(r1.getPassword().equals(password)) {
				httpSession.setAttribute("user", r1);
				System.out.println(r1.getEmail());
				return "Successfully login";
			}
			else {
				return "password wrong";
			}
			
		}
		return null;
	}
}