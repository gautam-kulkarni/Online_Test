package com.GREOT.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.GREOT.model.Questions;

public interface QuestionRepo extends JpaRepository<Questions, Long>
{
	
}
