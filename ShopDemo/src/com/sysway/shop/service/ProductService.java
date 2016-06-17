package com.sysway.shop.service;

import java.util.List;

import com.sysway.shop.entity.Product;
import com.sysway.shop.util.PageBean;

public interface ProductService {

	List<Product> findHotProducts();

	List<Product> findNewProducts();

	Product findByPid(Integer id);

	PageBean<Product> findProductsBycsid(Integer csid, int currentPage);

}
