package com.sysway.shop.service;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sysway.shop.entity.Product;
import com.sysway.shop.util.PageBean;

@Service
@Transactional
@SuppressWarnings("unchecked")
public class ProductSerbiceImpl implements ProductService {

	@Resource
	private SessionFactory sessionFactory;
	@Override
	public List<Product> findHotProducts() {
		String hql="FROM Product p WHERE p.is_hot=1";
		List<Product> list=sessionFactory.getCurrentSession().createQuery(hql)
		.setFirstResult(0).setMaxResults(10).list();
		return list;
	}
	@Override
	public List<Product> findNewProducts() {
		String hql="FROM Product p ORDER BY p.pdate DESC";
		List<Product> list=sessionFactory.getCurrentSession().createQuery(hql)
		.setFirstResult(0).setMaxResults(10).list();
		return list;
	}
	@Override
	public Product findByPid(Integer id) {
		String hql="FROM Product p WHERE p.pid=?";
		return (Product) sessionFactory.getCurrentSession().createQuery(hql)
		.setParameter(0, id).uniqueResult();
	}
	@Override
	public PageBean<Product> findProductsBycsid(Integer csid, int currentPage) {
		//select * from product p 
		String hql="FROM Product p WHERE p.categorySecond.csid=?";
		String hql1="SELECT COUNT(*) FROM Product p WHERE p.categorySecond.csid=?";
		PageBean pageBean=new PageBean<Product>();
		pageBean.setCurrentPage(currentPage);
		int pageSize=8;
		pageBean.setPageSize(pageSize);
		int totalCount=0;
		List<Product> plist=(List<Product>) sessionFactory.getCurrentSession()
		.createQuery(hql).setParameter(0, csid)
		.setFirstResult((currentPage-1)*pageSize)
		.setMaxResults(pageSize).list();
		if(plist!=null&&plist.size()>0){
			//totalCount=plist.size();
			pageBean.setList(plist);
		}
		String str=sessionFactory.getCurrentSession().createQuery(hql1)
		.setParameter(0, csid).uniqueResult().toString();
		totalCount=Integer.parseInt(str);
		pageBean.setTotalCount(totalCount);
		int totalPage=0;
		if(totalCount%pageSize==0){
			totalPage=totalCount/pageSize;
		}else{
			totalPage=totalCount/pageSize+1;
		}
		pageBean.setTotalPage(totalPage);
		
		return pageBean;
	}
}
