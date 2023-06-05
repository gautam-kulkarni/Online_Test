package com.GREOT.repository;


import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.GREOT.model.Registration;

public interface RegistrationRepo extends JpaRepository<Registration, Long>
{
	public Optional<Registration> findByEmail(String email);
	
}
