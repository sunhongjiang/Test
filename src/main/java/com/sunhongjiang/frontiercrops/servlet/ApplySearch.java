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

import com.sunhongjiang.frontiercrops.dao.ApplyDao;
import com.sunhongjiang.frontiercrops.dao.impl.ApplyDaoImpl;
import com.sunhongjiang.frontiercrops.domain.Apply;
import com.sunhongjiang.frontiercrops.service.ApplyService;
import com.sunhongjiang.frontiercrops.service.impl.ApplyServiceImpl;

@WebServlet(name = "applySearch", urlPatterns = { "/applySearch" })
public class ApplySearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger LOGGER = LogManager.getLogger(ShowUnchecked.class);

	public ApplySearch() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		LOGGER.info("doGet() is invoked...");
		response.setContentType("application/json;charset=utf-8");
		ApplyDao applyDao = new ApplyDaoImpl();
		ApplyService applyService = new ApplyServiceImpl(applyDao);
		String text = request.getParameter("param");
		LOGGER.info(text);
		List<Apply> list = applyService.search(text);

		request.setAttribute("applys", list);

		request.getRequestDispatcher("/WEB-INF/jsp/applyManage.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
