package com.xjh.bean;

import java.io.Serializable;

public class LeftNavItem implements Serializable{
	private String url;
	private String name;
	private String conent;
	public LeftNavItem(String url,String name,String content) {
		// TODO Auto-generated constructor stub
		this.url=url;
		this.name=name;
		this.conent=content;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getConent() {
		return conent;
	}
	public String getUrl() {
		return url;
	}
	
}
