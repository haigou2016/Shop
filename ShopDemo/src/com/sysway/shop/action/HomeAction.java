package com.sysway.shop.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sysway.shop.entity.Category;
import com.sysway.shop.entity.Product;
import com.sysway.shop.service.CategoryService;
import com.sysway.shop.service.ProductService;
@Controller
@Scope("prototype")
public class HomeAction extends ActionSupport{

	
	@Resource
	private CategoryService categoryService;
	@Resource
	private ProductService productService;
	/**
	 * 1.进入首页,查询一级菜单 存入session
	 * 2.查询热门商品
	 * @return 首页index页面
	 * @throws Exception
	 */
	public String index() throws Exception {
		//顶级菜单
		List<Category> clist=categoryService.findAll();
		ActionContext.getContext().getSession().put("clist", clist);
		
		//热门商品
		List<Product> hotProductList=productService.findHotProducts();
		ActionContext.getContext().put("hotProductList", hotProductList);
		
		//最新商品
		List<Product> newProductList=productService.findNewProducts();
		ActionContext.getContext().put("newProductList", newProductList);
		return "index";
	}
}
