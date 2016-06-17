package com.sysway.cyh.test;

import org.hibernate.SessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestBean {

	private ApplicationContext ac=new ClassPathXmlApplicationContext("applicationContext.xml");
	
	  @Test
	  public void test(){
		  SessionFactory sf=(SessionFactory) ac.getBean("sessionFactory");
		  System.out.println(sf);
	  }
	  
}
