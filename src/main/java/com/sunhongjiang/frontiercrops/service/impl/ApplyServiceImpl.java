package com.sunhongjiang.frontiercrops.service.impl;

import java.util.List;

import com.sunhongjiang.frontiercrops.dao.ApplyDao;
import com.sunhongjiang.frontiercrops.domain.Apply;
import com.sunhongjiang.frontiercrops.service.ApplyService;

public class ApplyServiceImpl implements ApplyService {
	private ApplyDao applyDao;

	@Override
	public void aduit(String id, String pass, String comment) {
		this.applyDao.aduit(id, pass, comment);
	}

	@Override
	public Apply detail(String id) {
		return this.applyDao.detail(id);
	}

	@Override
	public List<Apply> search(String applier, String title) {
		return this.applyDao.search(applier, title);
	}

	@Override
	public List<Apply> getAll() {
		return this.applyDao.getAll();
	}

}
