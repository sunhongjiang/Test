package com.sunhongjiang.frontiercrops.domain;

public class Apply {

	private String id;

	// 船名
	private String shipName;
	// 船籍港
	private String shipPort;
	// 船主
	private String shipOwner;
	// 航行区域
	private String navigationArea;
	// 船上负责人
	private String captain;
	// 负责人现住址
	private String captainAddress;
	// 船舶所属单位
	private String shipInstitute;
	// 委托单位
	private String entrustUnit;
	// 负责人联系方式
	private String captainTel;
	// 船质
	private String shipQuality;
	// 作业类型
	private String jobType;
	// 船主身份证号码
	private String ownerId;
	// 常住地泊点
	private String stopArea;
	// 船上负责人身份证号码
	private String captainId;
	// 是否通过
	private String pass;
	// 审核意见
	private String comment;
	// 申请人
	private String applier;
	// 申请表标题
	private String title;

	public Apply() {

	}

	public Apply(String id, String shipName, String shipPort, String shipOwner, String navigationArea, String captain,
			String captainAddress, String shipInstitute, String entrustUnit, String captainTel, String shipQuality,
			String jobType, String ownerId, String stopArea, String captainId, String pass, String comment,
			String applier, String title) {
		super();
		this.id = id;
		this.shipName = shipName;
		this.shipPort = shipPort;
		this.shipOwner = shipOwner;
		this.navigationArea = navigationArea;
		this.captain = captain;
		this.captainAddress = captainAddress;
		this.shipInstitute = shipInstitute;
		this.entrustUnit = entrustUnit;
		this.captainTel = captainTel;
		this.shipQuality = shipQuality;
		this.jobType = jobType;
		this.ownerId = ownerId;
		this.stopArea = stopArea;
		this.captainId = captainId;
		this.pass = pass;
		this.comment = comment;
		this.applier = applier;
		this.title = title;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getShipName() {
		return shipName;
	}

	public void setShipName(String shipName) {
		this.shipName = shipName;
	}

	public String getShipPort() {
		return shipPort;
	}

	public void setShipPort(String shipPort) {
		this.shipPort = shipPort;
	}

	public String getShipOwner() {
		return shipOwner;
	}

	public void setShipOwner(String shipOwner) {
		this.shipOwner = shipOwner;
	}

	public String getNavigationArea() {
		return navigationArea;
	}

	public void setNavigationArea(String navigationArea) {
		this.navigationArea = navigationArea;
	}

	public String getCaptain() {
		return captain;
	}

	public void setCaptain(String captain) {
		this.captain = captain;
	}

	public String getCaptainAddress() {
		return captainAddress;
	}

	public void setCaptainAddress(String captainAddress) {
		this.captainAddress = captainAddress;
	}

	public String getShipInstitute() {
		return shipInstitute;
	}

	public void setShipInstitute(String shipInstitute) {
		this.shipInstitute = shipInstitute;
	}

	public String getEntrustUnit() {
		return entrustUnit;
	}

	public void setEntrustUnit(String entrustUnit) {
		this.entrustUnit = entrustUnit;
	}

	public String getCaptainTel() {
		return captainTel;
	}

	public void setCaptainTel(String captainTel) {
		this.captainTel = captainTel;
	}

	public String getShipQuality() {
		return shipQuality;
	}

	public void setShipQuality(String shipQuality) {
		this.shipQuality = shipQuality;
	}

	public String getJobType() {
		return jobType;
	}

	public void setJobType(String jobType) {
		this.jobType = jobType;
	}

	public String getOwnerId() {
		return ownerId;
	}

	public void setOwnerId(String ownerId) {
		this.ownerId = ownerId;
	}

	public String getStopArea() {
		return stopArea;
	}

	public void setStopArea(String stopArea) {
		this.stopArea = stopArea;
	}

	public String getCaptainId() {
		return captainId;
	}

	public void setCaptainId(String captainId) {
		this.captainId = captainId;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getApplier() {
		return applier;
	}

	public void setApplier(String applier) {
		this.applier = applier;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
}
