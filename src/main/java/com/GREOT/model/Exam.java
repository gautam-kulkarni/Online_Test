package com.GREOT.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Exam")
public class Exam {
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer e_id;
	private String time;
	private String date;
	private String qcategory;
	
	
	public Integer gete_id() {
		return e_id;
	}


	public void sete_id(Integer e_id) {
		this.e_id = e_id;
	}


	public String getTime() {
		return time;
	}


	public void setTime(String time) {
		this.time = time;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}


	public String getQcategory() {
		return qcategory;
	}


	public void setQcategory(String qcategory) {
		this.qcategory = qcategory;
	}


	public Exam(Integer e_id, String time, String date, String qcategory) {
		super();
		this.e_id = e_id;
		this.time = time;
		this.date = date;
		this.qcategory = qcategory;
		
	
	}


	public Exam() {
		
	}
	
}
