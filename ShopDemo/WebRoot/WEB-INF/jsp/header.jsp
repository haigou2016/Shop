<%@ page language="java" pageEncoding="utf-8"%>
<%@taglib  uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="ctx" ></c:set>
			<div class="span10 last">
				<div class="topNav clearfix">
					<ul>
					 <s:if test="#session.loginUser==null">
						<li id="headerLogin" class="headerLogin"
							style="display: list-item;">
							<a href="${ctx}/user_toLogin.action">登录</a>|
						</li>
						<li id="headerRegister" class="headerRegister"
							style="display: list-item;">
							<a href="${ctx}/user_register.action">注册</a>|
						</li>
						</s:if>
						<s:else>
						<li id="headerLogin" class="headerLogin" style="display: list-item;">
							  欢迎你：<s:property value="#session.loginUser.username"/>
							|</li>
						<li id="headerLogin" class="headerLogin" style="display: list-item;">
							<a href="#">我的订单</a>
						|</li>
						<li id="headerLogout" class="headerLogout" style="display: list-item;">
							<a href="${ctx}/user_logout.action">退出</a>|
			            </li>
						</s:else>
						<li>
							<a>会员中心</a> |
						</li>
						<li>
							<a>关于我们</a>
						</li>
					</ul>
				</div>
				<div class="cart">
					<a href="${ctx}/cart_myCart.action">购物车</a>
				</div>
				<div class="phone">
					客服热线:
					<strong>96008/53277764</strong>
				</div>
			</div>
			<div class="span24">
				<ul class="mainNav">
					<li>
						<a href="${ctx}/home_index.action">首页</a> |
					</li>
					<s:iterator value="#session.clist" var="c">
					<li>
						<a href="${ctx}/product_findBycid.action?cid=<s:property value="#c.cid"/>"><s:property value="#c.cname"/></a> |
					</li>
					</s:iterator>
				</ul>
			</div>
