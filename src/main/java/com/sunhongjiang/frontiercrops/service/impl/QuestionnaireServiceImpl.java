package com.sunhongjiang.frontiercrops.service.impl;

import java.util.List;

import com.sunhongjiang.frontiercrops.dao.QuestionnaireDao;
import com.sunhongjiang.frontiercrops.domain.Questionnaire;
import com.sunhongjiang.frontiercrops.service.QuestionnaireService;

public class QuestionnaireServiceImpl implements QuestionnaireService {
	private QuestionnaireDao q;

	public QuestionnaireServiceImpl() {
	}

	public QuestionnaireServiceImpl(QuestionnaireDao q) {
		this.q = q;
	}

	@Override
	public List<Questionnaire> getAll() {

		return q.getAll();
	}

	@Override
	public void addQuestionnaire(Questionnaire q) {
		this.q.addQuestionnaire(q);

	}

	@Override
	public void singleDelete(String id) {
		this.q.singleDelete(id);

	}

	@Override
	public void batchDelete(String[] ids) {
		this.q.batchDelete(ids);

	}

	@Override
	public List<Questionnaire> search(String text) {

		return q.search(text);
	}

	@Override
	public void editQuestionnaire(Questionnaire q) {
		this.q.editQuestionnaire(q);

	}

}
