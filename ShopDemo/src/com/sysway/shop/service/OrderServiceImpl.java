package com.sysway.shop.service;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sysway.shop.entity.Order;

@Service
@Transactional
public class OrderServiceImpl implements OrderService {

	@Resource
	private SessionFactory sessionFactory;
	public void save(Order model) {
		sessionFactory.getCurrentSession().save(model);
		/*final StringBuffer sb=new StringBuffer("sss");
		sb.append("cc");
		System.out.println(sb);*/
	}
}
