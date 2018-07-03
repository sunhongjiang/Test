package com.sunhongjiang.frontiercrops.service;

import java.util.List;

import com.sunhongjiang.frontiercrops.domain.Questionnaire;

public interface QuestionnaireService {
	// 获取所有问卷
	List<Questionnaire> getAll();

	// 新增问卷
	void addQuestionnaire(Questionnaire q);

	// 单个删除问卷
	void singleDelete(String id);

	// 批量删除问卷
	void batchDelete(String[] ids);

	// 关键字查找符合条件的问卷
	List<Questionnaire> search(String text);

	// 编辑问卷
	void editQuestionnaire(Questionnaire q);
}
