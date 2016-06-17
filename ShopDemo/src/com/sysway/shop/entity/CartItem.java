package com.sysway.shop.entity;
/**
 * 购物项
 * @author Lenovo
 *
 */
public class CartItem {
	
	
	private Product product;
	private int  count; //数量
	private double subtotal; //小计
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public double getSubtotal() {
		return product.getShop_price()*count;
	}


	
}
