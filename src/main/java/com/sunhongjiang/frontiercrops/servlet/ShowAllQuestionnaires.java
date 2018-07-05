package com.sunhongjiang.frontiercrops.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.sunhongjiang.frontiercrops.dao.QuestionnaireDao;
import com.sunhongjiang.frontiercrops.dao.impl.QuestionnaireDaoImpl;
import com.sunhongjiang.frontiercrops.domain.Questionnaire;
import com.sunhongjiang.frontiercrops.service.QuestionnaireService;
import com.sunhongjiang.frontiercrops.service.impl.QuestionnaireServiceImpl;

@WebServlet(name = "showAllQuestionnaires", urlPatterns = { "/showAllQuestionnaires" })
public class ShowAllQuestionnaires extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger LOGGER = LogManager.getLogger(ShowAllQuestionnaires.class);

	public ShowAllQuestionnaires() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		LOGGER.info("doGet() is invoked...");
		QuestionnaireDao questionnaireDao = new QuestionnaireDaoImpl();
		QuestionnaireService questionnaireService = new QuestionnaireServiceImpl(questionnaireDao);
		List<Questionnaire> list = questionnaireService.getAll();
		request.setAttribute("questionnaires", list);
		request.getRequestDispatcher("/WEB-INF/jsp/questionnaireManage.jsp").forward(request, response);
		;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
