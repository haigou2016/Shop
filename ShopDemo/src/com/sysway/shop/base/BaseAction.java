package com.sysway.shop.base;


import java.lang.reflect.ParameterizedType;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.sysway.shop.service.OrderService;
import com.sysway.shop.service.ProductService;
import com.sysway.shop.service.Userservice;

public class BaseAction<T> extends ActionSupport implements ModelDriven<T> {

	
	protected T model;
    public BaseAction() {
    	ParameterizedType pt=(ParameterizedType) this.getClass().getGenericSuperclass();
		Class<T> clazz=(Class<T>) pt.getActualTypeArguments()[0];
		try {
			model=clazz.newInstance();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}
	}
	public T getModel() {
		
		return model;
	}
	//--------------------所有Action中使用的Service------------------
	@Resource
	protected Userservice userService;
	@Resource
	protected ProductService productService;
	@Resource
	protected OrderService orderService;
}