package com.sunhongjiang.frontiercrops.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.sunhongjiang.frontiercrops.dao.ApplyDao;
import com.sunhongjiang.frontiercrops.dao.impl.ApplyDaoImpl;
import com.sunhongjiang.frontiercrops.service.ApplyService;
import com.sunhongjiang.frontiercrops.service.impl.ApplyServiceImpl;

@WebServlet(name = "detail", urlPatterns = { "/servlet/detail" })
public class Detail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static final Logger LOGGER = LogManager.getLogger(Detail.class);

	public Detail() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ApplyDao applyDao = new ApplyDaoImpl();
		ApplyService applyService = new ApplyServiceImpl(applyDao);
		String id = request.getParameter("id");
		applyService.detail(id);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}