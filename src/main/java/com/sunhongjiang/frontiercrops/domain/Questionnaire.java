package com.sunhongjiang.frontiercrops.domain;

public class Questionnaire {
	private String title;
	private String description;
	private String question;
	private String[] answers;

	public Questionnaire() {

	}

	public Questionnaire(String title, String description, String question, String[] answers) {
		super();
		this.title = title;
		this.description = description;
		this.question = question;
		this.answers = answers;
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

	public String[] getAnswers() {
		return answers;
	}

	public void setAnswers(String[] answers) {
		this.answers = answers;
	}

}
