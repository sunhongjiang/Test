package com.sunhongjiang.frontiercrops.service;

import java.util.List;

import com.sunhongjiang.frontiercrops.domain.Apply;

public interface ApplyService {
	// 审核
	void aduit(String id, String pass, String comment);

	// 查看某一项详情
	Apply detail(String id);

	// 关键字查找符合条件的申请
	List<Apply> search(String text);

	// 管理页面全部展示(未审核数据)
	List<Apply> getAll();

	// 管理页面展示已通过数据
	List<Apply> getPassed();

	// 管理页面展示未通过数据
	List<Apply> getUnpassed();
}
