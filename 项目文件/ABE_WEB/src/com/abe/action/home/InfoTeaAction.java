package com.abe.action.home;


import java.io.IOException;
import java.util.List;

import net.sf.json.JSONObject;

import org.apache.log4j.Logger;

import com.abe.action.BaseAction;
import com.abe.action.iBaseAction;
import com.abe.entity.InfoTeacher;
import com.abe.entity.Users;
import com.abe.entity.app.RespCommon;
import com.abe.service.iBaseService;
import com.abe.service.home.iTeacherService;
import com.abe.tools.NameOfDate;
import com.abe.tools.Page;

public class InfoTeaAction extends BaseAction implements iBaseAction {
    
	
	
	private static final long serialVersionUID = 1L;
	//service们
	private iBaseService ser;
	private iTeacherService teacherSer;
	private Page page;
	//-------------
	private String result="teacherManager";
	private InfoTeacher teacher;
	private List<InfoTeaAction> teachers; 
	private String cz;
	private String id;
	private Logger logger=Logger.getLogger(InfoTeaAction.class);
	
	//-----------------------------------------------------
	public iBaseService getSer() {
		return ser;
	}
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	public List<InfoTeaAction> getTeachers() {
		return teachers;
	}
	public void setTeachers(List<InfoTeaAction> teachers) {
		this.teachers = teachers;
	}
	public String getCz() {
		return cz;
	}
	public void setCz(String cz) {
		this.cz = cz;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setSer(iBaseService ser) {
		this.ser = ser;
	}
	public iTeacherService getTeacherSer() {
		return teacherSer;
	}
	public void setTeacherSer(iTeacherService teacherSer) {
		this.teacherSer = teacherSer;
	}
	public InfoTeacher getTeacher() {
		return teacher;
	}
	public void setTeacher(InfoTeacher teacher) {
		this.teacher = teacher;
	}
	//-----------------------------------------------------
	
	/**
	 * 卢江林 2016-11-22
	 * app通过trpId查询教师资料
	 */
	public String queryFromApp()throws IOException{
		logger.debug("-------进入queryFromAPP--------");
		String uid = ser.clearSpace(getRequest(), "UId");
		RespCommon respTeacher = new RespCommon();
		if(uid==null){
			respTeacher.setResult("003");
			respTeacher.setData(null);
		}else{
			Users user = (Users) ser.get(Users.class, uid);
			if(user==null){
				respTeacher.setResult("002");
				respTeacher.setData(null);
			}else if(user.getUType().equals("2")){
				List<InfoTeacher> list = ser.find("from InfoTeacher where itId=?", new String[]{user.getTrpId()});
				respTeacher.setResult("001");
				respTeacher.setData(respTeacher);
			}
		}
		JSONObject json = ser.objToJson(respTeacher);
		sendToApp(json,ser);
		return null;
	}
	
	/**
	 * @author lujianglin
	 * 查询老师的个人信息资料
	 * @param UId
	 * @throws IOException 
	 */
	public String queryTeacherFromApp(String uId) throws IOException{
		logger.debug("-------进入queryTeacherFromApp--------");
		String respTeacher = teacherSer.queryTeacher(uId);
		JSONObject jsonObject = ser.objToJson(respTeacher, "yyyy-MM-dd HH:mm:ss");
		getPrintWriter().print(jsonObject);
		getPrintWriter().flush();
		getPrintWriter().close();
		return null;
	}
	
	@Override
	public void clearOptions() {
		cz=null;
		id=null;
		teacher=null;
		teachers=null;
	}

	@Override
	public void clearSpace() {
		cz=cz!=null?cz.trim():null;
		id=id!=null?id.trim():null;
	}

	@Override
	public String delete() {
		if (id!=null) {
			teacher=(InfoTeacher) ser.get(InfoTeacher.class, id);
			if (teacher!=null) {
				ser.delete(teacher);
			}
		}
		return gotoQuery();
	}


	@Override
	public String queryOfFenYe() {
		clearSpace();
		if (cz!=null && cz.equals("yes")) {
			clearOptions();
		}
		if (page==null) {
			page=new Page(1, 0, 10);
		}
		StringBuffer hql=new StringBuffer("from InfoTeacher where 1=1 ");
		if (id!=null) {
			hql.append("and itId like '%"+id+"%'" );
		}
		hql.append("order by itIntoDate desc ");
		teachers=ser.query(hql.toString(), null, hql.toString(), page);
		return result;
	}
	@Override
	public String gotoQuery() {
		clearSpace();
		String hql="from InfoTeacher order by itIntoDate desc";
		teachers=ser.query(hql, null, hql, page);
		return result;
	}
	@Override
	public String update() {
		if (teacher!=null) {
			ser.update(teacher);
		}
		return gotoQuery();
	}

	/*张顺 2016-12-12*/
	@Override
	public String add() {
		if (teacher!=null) {
			teacher.setItId(NameOfDate.getNum());
			ser.save(teacher);
		}
		return gotoQuery();
	}
	
	
	

}
