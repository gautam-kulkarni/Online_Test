package com.GREOT.model;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Questions")

public class Questions {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long q_id;
	private String question;
	private String option_1;
	private String option_2;
	private String option_3;
	private String option_4;
	private String q_category;
	private String correctAnnswer;
	
	
	public Questions() {
		
	}


	public Long getQ_id() {
		return q_id;
	}


	public void setQ_id(Long q_id) {
		this.q_id = q_id;
	}


	public String getQuestion() {
		return question;
	}


	public void setQuestion(String question) {
		this.question = question;
	}


	public String getOption_1() {
		return option_1;
	}


	public void setOption_1(String option_1) {
		this.option_1 = option_1;
	}


	public String getOption_2() {
		return option_2;
	}


	public void setOption_2(String option_2) {
		this.option_2 = option_2;
	}


	public String getOption_3() {
		return option_3;
	}


	public void setOption_3(String option_3) {
		this.option_3 = option_3;
	}


	
	public String getOption_4() {
		return option_4;
	}


	public void setOption_4(String option_4) {
		this.option_4 = option_4;
	}

	

	public String getQ_category() {
		return q_category;
	}


	public void setQ_category(String q_category) {
		this.q_category = q_category;
	}


	public String getCorrectAnnswer() {
		return correctAnnswer;
	}


	public void setCorrectAnnswer(String correctAnnswer) {
		this.correctAnnswer = correctAnnswer;
	}


	public Questions(Long q_id, String question, String option_1, String option_2, String option_3, String option_4,
			String q_category, String correctAnnswer) {
		super();
		this.q_id = q_id;
		this.question = question;
		this.option_1 = option_1;
		this.option_2 = option_2;
		this.option_3 = option_3;
		this.option_4 = option_4;
		this.q_category = q_category;
		this.correctAnnswer = correctAnnswer;
	}

	
}
	
	