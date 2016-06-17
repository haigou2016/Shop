package com.sysway.shop.action;

import java.util.HashMap;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.sysway.shop.base.BaseAction;
import com.sysway.shop.entity.User;
@Controller
@Scope("prototype")
public class UserAction extends BaseAction<User>{
    private Map<String, String> ajaxmap;
	
	public Map<String, String> getAjaxmap() {
		return ajaxmap;
	}
	public void setAjaxmap(Map ajaxmap) {
		this.ajaxmap = ajaxmap;
	}
	/**
	 * 跳转至登陆页面
	 * @return
	 * @throws Exception
	 */
	public String register() throws Exception {
		return "toRegister";
	}
	/**
	 * 校验用户名是否存在
	 * @return 用户名是否可用
	 * @throws Exception
	 */
	public String checkUsername() throws Exception{
		ajaxmap=new HashMap<String, String>();
		String username=model.getUsername();
		User user=userService.findByUsername(username);
		//只有数据库不存在并且username不为空才可用
		if(user==null){
			ajaxmap.put("message", "用户名可用");
		}else{
			ajaxmap.put("message", "用户名不可用");
		}
		return SUCCESS;
	}
	/**
	 * 注册账号，发送激活链接到注册邮箱
	 * @return 注册成功页面
	 * @throws Exception
	 */
	public String registInfo()throws Exception{
		userService.save(model);
		this.addActionMessage("恭喜你注册成功,请去邮箱激活账号");
		return "msg";
	}
	/**
	 * 激活账号:根据激活码找到对应注册用户，将state改为1，清空激活码
	 * @return
	 * @throws Exception
	 */
	public String active()throws Exception{
		String code=model.getCode();
		// 根据激活码查询用户:
		User existUser = userService.findByCode(code);
		// 判断
		if (existUser == null) {
			// 激活码错误的
			this.addActionMessage("激活失败:激活码错误!");
		} else {
			// 激活成功
			// 修改用户的状态
			existUser.setState(1);
			existUser.setCode(null);
			userService.update(existUser);
			this.addActionMessage("激活成功:请去登录!");
		}
		return "msg";
	}
	/**
	 * 
	 * @return 跳转登陆页面
	 * @throws Exception
	 */
	public String toLogin() throws Exception {
		
		return "toLogin";
	}
	public String login()throws Exception{
		User loginUser=userService.findByUser(model);
		if(loginUser==null){
			//账号密码不存在或者未激活
			this.addActionError("账号密码不存在或者未激活");
			return "toLogin";
		}else{
			//将user放入session中管理
			ServletActionContext.getRequest().getSession().setAttribute("loginUser", loginUser);
			//ActionContext.getContext().getSession().put("user", user);
			return "toIndex";
		}
	}
	public String logout() throws Exception{
		ServletActionContext.getRequest().getSession().invalidate();
		return "logout";
	}
}
