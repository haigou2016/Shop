package com.sysway.shop.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.sysway.shop.base.BaseAction;
import com.sysway.shop.entity.Product;
import com.sysway.shop.util.PageBean;
@Controller
@Scope("prototype")
public class ProductAction extends BaseAction<Product>{
	
	private Integer cid;
	private Integer csid;
	private int currentPage;
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	
	public Integer getCsid() {
		return csid;
	}
	public void setCsid(Integer csid) {
		this.csid = csid;
	}
	
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	/**
	 * 点击商品图片查看详情
	 * @return  单个商品页面
	 * @throws Exception
	 */
	public String findByPid() throws Exception {
		Product product=productService.findByPid(model.getPid());
		ActionContext.getContext().getValueStack().push(product);
		return "productInfo";
	}
	/**
	 * 点击顶级菜单 显示对应二级菜单
	 * @return
	 * @throws Exception
	 */
	public String findBycid() throws Exception{
		
		return "product_list";
	}
	/**
	 * 点击二级菜单查询出对应商品的分页显示
	 * @return
	 * @throws Exception
	 */
	public String findProductsBycsid() throws Exception{
		PageBean<Product> pagebean=productService.findProductsBycsid(csid,currentPage);
		ActionContext.getContext().getValueStack().set("pagebean", pagebean);
		return "product_list";
	}
}
