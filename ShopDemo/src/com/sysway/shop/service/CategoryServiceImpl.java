package com.sysway.shop.service;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sysway.shop.entity.Category;
import com.sysway.shop.entity.Product;

@Service
@Transactional
public class CategoryServiceImpl implements CategoryService{

	@Resource
    private SessionFactory sessionFactory;
	@Override
	public List<Category> findAll() {
		String hql="FROM Category ";
		List<Category> list=sessionFactory.getCurrentSession().createQuery(hql).list();
		return list;
	}
	
}
