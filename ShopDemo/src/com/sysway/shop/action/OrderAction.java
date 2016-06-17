package com.sysway.shop.action;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.sysway.shop.base.BaseAction;
import com.sysway.shop.entity.Cart;
import com.sysway.shop.entity.CartItem;
import com.sysway.shop.entity.Order;
import com.sysway.shop.entity.OrderItem;
import com.sysway.shop.entity.User;
@Controller
@Scope("prototype")
public class OrderAction extends BaseAction<Order>{
	
	
	/**
	 * 提交订单 保存订单 跳转到订单详情页面 
	 */
	public String submit() throws Exception {
		//1.先检查用户是否登录 未登录的情况下 不能提交订单转至登陆页面
		User user=(User) ServletActionContext.getRequest().getSession().getAttribute("loginUser");
		if(user==null){
			this.addActionError("请先登陆后再进行此操作!");
			return "toLogin";
		}
		Cart cart = (Cart) ServletActionContext.getRequest().getSession()
		.getAttribute("cart");
		if(cart==null){
			this.addActionError("你还没有购物，请先挑选商品！");
			return "msg";
		}
		for(CartItem c:cart.getCartItems()){
			OrderItem orderItem=new OrderItem();
			orderItem.setCount(c.getCount());
			orderItem.setSubtotal(c.getSubtotal());
			orderItem.setProduct(c.getProduct());
			model.getOrderItems().add(orderItem);
		}
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time=sdf.format(new Date());
		Date date=sdf.parse(time);
		model.setTotal(cart.getTotal());
		model.setOrdertime(date);
		model.setState(1);//未付款
		model.setName(user.getName());
		model.setAddr(user.getAddr());
		model.setPhone(user.getPhone());
		model.setUser(user);
		orderService.save(model);
		//ActionContext.getContext().getValueStack().set("model", model);
		return "to_submit";
	}

}
