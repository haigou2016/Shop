package com.sysway.shop.service;

import com.sysway.shop.entity.User;

public interface Userservice {

	public User findByUsername(String username);
	public void save(User user);
	public User findByCode(String code);
	public void update(User existUser);
	public User findByUser(User model);
	
}
