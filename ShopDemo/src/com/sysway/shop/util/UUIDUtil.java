package com.sysway.shop.util;

import java.util.UUID;

public class UUIDUtil {

	public static String createUUID(){
		return UUID.randomUUID().toString().replace("-", "");
	}
}
