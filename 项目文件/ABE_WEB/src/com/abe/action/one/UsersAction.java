package com.abe.action.one;


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

/**
 * 张顺 2016-12-12
 * 用户管理,web端对所有用户的管理
 * @author it023
 */
public class UsersAction extends BaseAction implements iBaseAction {
    
	
	
	private static final long serialVersionUID = 1L;
	private iBaseService ser;
	private Page page;
	private String result="users";
	private Users user;
	private List<Users> users; 
	private String cz;
	private String id;
	private Logger logger=Logger.getLogger(UsersAction.class);
	
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
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	public List<Users> getUsers() {
		return users;
	}
	public void setUsers(List<Users> users) {
		this.users = users;
	}
	//-----------------------------------------------------
	
	
	
	@Override
	public void clearOptions() {
		cz=null;
		id=null;
		user=null;
		users=null;
	}

	@Override
	public void clearSpace() {
		cz=cz!=null?cz.trim():null;
		id=id!=null?id.trim():null;
	}

	@Override
	public String delete() {
		if (id!=null) {
			user=(Users) ser.get(Users.class, id);
			if (user!=null) {
				ser.delete(user);
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
		StringBuffer hql=new StringBuffer("from Users where 1=1 ");
		if (id!=null) {
			hql.append("and UId like '%"+id+"%'" );
		}
		hql.append("order by UCreateTime desc ");
		users=ser.query(hql.toString(), null, hql.toString(), page);
		return result;
	}
	@Override
	public String gotoQuery() {
		clearSpace();
		String hql="from Users order by UCreateTime desc";
		users=ser.query(hql, null, hql, page);
		return result;
	}
	@Override
	public String update() {
		if (user!=null) {
			ser.update(user);
		}
		return gotoQuery();
	}

	/*张顺 2016-12-12*/
	@Override
	public String add() {
		if (user!=null) {
			user.setUId(NameOfDate.getNum());
			ser.save(user);
		}
		return gotoQuery();
	}
	
	
	

}
