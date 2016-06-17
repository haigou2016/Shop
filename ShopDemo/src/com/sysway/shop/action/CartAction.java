package com.sysway.shop.action;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.sysway.shop.base.BaseAction;
import com.sysway.shop.entity.Cart;
import com.sysway.shop.entity.CartItem;
import com.sysway.shop.entity.Product;
@Controller
@Scope("prototype")
public class CartAction extends BaseAction<CartItem> {

	private Integer pid;
	
	public Integer getPid() {
		return pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	/**
	 * 将商品加入购物车 
	 * @return
	 * @throws Exception
	 */
	public String addItem() throws Exception {
		int count =model.getCount();
		Product product=productService.findByPid(pid);
		CartItem cartItem=new CartItem();
		cartItem.setCount(count);
		cartItem.setProduct(product);
		Cart cart =getCart();
		cart.addCart(cartItem);
		return "cart_add";
	}
	/**
	 * 删除购物项
	 * @return
	 * @throws Exception
	 */
	public String deleteItem() throws Exception{
		getCart().removeCart(pid);
		return "cart_delete";
	}
	/**
	 * 清空购物车
	 * @return
	 * @throws Exception
	 */
	public String clear() throws Exception{
		getCart().clearCart();
		return "cart_clear";
	}
	
	public String myCart() throws Exception{
		
		return "myCart";
	}
	
	/**
	 * 获得购物车的方法:从session中获得购物车.
	 * @return
	 */
	private Cart getCart() {
		Cart cart = (Cart) ServletActionContext.getRequest().getSession()
				.getAttribute("cart");
		if (cart == null) {
			cart = new Cart();
			ServletActionContext.getRequest().getSession()
					.setAttribute("cart", cart);
		}
		return cart;
	}
}
