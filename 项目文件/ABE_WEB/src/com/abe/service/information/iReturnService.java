package com.abe.service.information;

import com.abe.entity.app.RespReturn;
import com.abe.entity.app.RespReturnAll;

/*
 * 用户反馈
 * @author 李钊
 */
public interface iReturnService {
	/*
	 * 用户建立反馈
	 */
	public RespReturn insertReturn(String rContent,String uId);
	/*
	 * 查看单条反馈
	 */
	public RespReturn findSingleReturn(String rId);
	/*
	 * 修改反馈状态
	 */
	public RespReturn updateReturn(String rId,String rStatus);
	/*
	 * 分页查看所有反馈
	 */
	public RespReturnAll findAllReturnsByPage(String pageNo,String pageSize,String rStatus);
}
