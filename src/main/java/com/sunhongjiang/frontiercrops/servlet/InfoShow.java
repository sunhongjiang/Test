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

@WebServlet(name = "infoShow", urlPatterns = { "/servlet/infoShow" })
public class InfoShow extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private static final Logger LOGGER = LogManager.getLogger(InfoShow.class);

	public InfoShow() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		LOGGER.info("doGet() is invoked...");

		ApplyDao applyDao = new ApplyDaoImpl();
		ApplyService applyService = new ApplyServiceImpl(applyDao);
		List<Apply> list = applyService.getAll();

		request.setAttribute("applys", list);

		request.getRequestDispatcher("/webapp/ApplyManage.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
