package com.sysway.shop.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class SearchAction  extends ActionSupport{

	private String search_text;
	private String result;
	

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getSearch_text() {
		return search_text;
	}

	public void setSearch_text(String searchText) {
		search_text = searchText;
	}
	
	public String search() throws Exception {
		String []words = {"amani","abc","apple","abstract","an","bike","byebye",
				"beat","be","bing","come","cup","class","calendar","china"};
				if(search_text != null&&!"".equals(search_text)) {
				if(search_text.length() != 0){
				String json="[";
				for(int i = 0; i < words.length; i++) {
				if(words[i].startsWith(search_text)){
				json += "\""+ words[i] + "\"" + ",";
				}
				}
				json = json.substring(0,json.length()-1>0?json.length()-1:1);
				json += "]";
				System.out.println("json:" + json); 
				result=json;
	           }
				}
				return SUCCESS;
	}
}
