package com.sysway.shop.service;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sysway.shop.entity.User;
import com.sysway.shop.util.MailUitls;
import com.sysway.shop.util.UUIDUtil;

@Service
@Transactional
@SuppressWarnings("unchecked")
public class UserServiceImpl implements Userservice {

	@Resource
    private SessionFactory sessionFactory;
	@Override
	public User findByUsername(String username) {
		List<User> list=sessionFactory.getCurrentSession().//
		createQuery("FROM User WHERE username=?")//
		.setParameter(0,username).list();
		if(list!=null&&list.size()>0){
			return list.get(0);
		}
		return null;
	}
	@Override
	public void save(User user) {
		user.setState(0);//0代表未激活，1代表激活
		String uuid=UUIDUtil.createUUID();
		user.setCode(uuid);
		MailUitls.sendMail(user.getEmail(), uuid);
		sessionFactory.getCurrentSession().save(user);
	}
	
	@Override
	public User findByCode(String code) {
		User user= (User) sessionFactory.getCurrentSession().//
		createQuery("FROM User WHERE code=?")//
		.setParameter(0, code).uniqueResult();
		return	user;
	}
	
	@Override
	public void update(User existUser) {
		sessionFactory.getCurrentSession().update(existUser);
		
	}
	
	@Override
	public User findByUser(User model) {
	User user=	(User) sessionFactory.getCurrentSession()
	    .createQuery("FROM User WHERE username=? and password=? and state=1")
	    .setParameter(0, model.getUsername())
	    .setParameter(1,model.getPassword())
		.uniqueResult();
		return user;
	}
}
