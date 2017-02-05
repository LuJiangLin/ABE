package com.abe.entity;

import java.util.Date;

/**
 * InfoTeacher entity. @author MyEclipse Persistence Tools
 */

public class InfoTeacher implements java.io.Serializable {

	// Fields

	private String itId;
	private String itNum;
	private String itName;
	private String itSex;
	private Date itBirthday;
	private String itPhone;
	private String itPost;
	private Date itIntoDate;
	private Date itLeaveDate;
	private String itState;
	private String itAddress;
	private String ssId;
//----------------------------------
	private SchoolSection schoolSection;
	// Constructors

	public SchoolSection getSchoolSection() {
		return schoolSection;
	}

	public void setSchoolSection(SchoolSection schoolSection) {
		this.schoolSection = schoolSection;
	}

	/** default constructor */
	public InfoTeacher() {
	}

	/** minimal constructor */
	public InfoTeacher(String itId, String itNum) {
		this.itId = itId;
		this.itNum = itNum;
	}

	/** full constructor */
	public InfoTeacher(String itId, String itNum, String itName, String itSex,
			Date itBirthday, String itPhone, String itPost, Date itIntoDate,
			Date itLeaveDate, String itState, String itAddress, String ssId) {
		this.itId = itId;
		this.itNum = itNum;
		this.itName = itName;
		this.itSex = itSex;
		this.itBirthday = itBirthday;
		this.itPhone = itPhone;
		this.itPost = itPost;
		this.itIntoDate = itIntoDate;
		this.itLeaveDate = itLeaveDate;
		this.itState = itState;
		this.itAddress = itAddress;
		this.ssId = ssId;
	}

	// Property accessors

	public String getItId() {
		return this.itId;
	}

	public void setItId(String itId) {
		this.itId = itId;
	}

	public String getItNum() {
		return this.itNum;
	}

	public void setItNum(String itNum) {
		this.itNum = itNum;
	}

	public String getItName() {
		return this.itName;
	}

	public void setItName(String itName) {
		this.itName = itName;
	}

	public String getItSex() {
		return this.itSex;
	}

	public void setItSex(String itSex) {
		this.itSex = itSex;
	}

	public Date getItBirthday() {
		return this.itBirthday;
	}

	public void setItBirthday(Date itBirthday) {
		this.itBirthday = itBirthday;
	}

	public String getItPhone() {
		return this.itPhone;
	}

	public void setItPhone(String itPhone) {
		this.itPhone = itPhone;
	}

	public String getItPost() {
		return this.itPost;
	}

	public void setItPost(String itPost) {
		this.itPost = itPost;
	}

	public Date getItIntoDate() {
		return this.itIntoDate;
	}

	public void setItIntoDate(Date itIntoDate) {
		this.itIntoDate = itIntoDate;
	}

	public Date getItLeaveDate() {
		return this.itLeaveDate;
	}

	public void setItLeaveDate(Date itLeaveDate) {
		this.itLeaveDate = itLeaveDate;
	}

	public String getItState() {
		return this.itState;
	}

	public void setItState(String itState) {
		this.itState = itState;
	}

	public String getItAddress() {
		return this.itAddress;
	}

	public void setItAddress(String itAddress) {
		this.itAddress = itAddress;
	}

	public String getSsId() {
		return this.ssId;
	}

	public void setSsId(String ssId) {
		this.ssId = ssId;
	}

}