package com.GREOT.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.GREOT.model.Exam;


public interface ExamRepo extends JpaRepository<Exam, Integer> {

}
