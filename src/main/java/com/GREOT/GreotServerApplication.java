package com.GREOT;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.GREOT.repository.RegistrationRepo;



@SpringBootApplication
public class GreotServerApplication {

	
	@Autowired
	RegistrationRepo registrationrepo;
	
	
	public static void main(String[] args) {
		SpringApplication.run(GreotServerApplication.class, args);
	}
	
}
