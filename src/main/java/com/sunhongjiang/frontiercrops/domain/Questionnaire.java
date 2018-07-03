package com.sunhongjiang.frontiercrops.domain;

import java.sql.Array;

public class Questionnaire {
	private String id;
	private String title;
	private String description;
	private String question;
	private Array answers;

	public Questionnaire() {

	}

	public Questionnaire(String id, String title, String description, String question, Array answers) {
		super();
		this.id = id;
		this.title = title;
		this.description = description;
		this.question = question;
		this.answers = answers;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public Array getAnswers() {
		return answers;
	}

	public void setAnswers(Array array) {
		this.answers = array;
	}

}
