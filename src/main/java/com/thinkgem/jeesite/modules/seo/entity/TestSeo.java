/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.seo.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 官网SEOEntity
 * @author shiyanjun
 * @version 2018-10-07
 */
public class TestSeo extends DataEntity<TestSeo> {
	
	private static final long serialVersionUID = 1L;
	private String urlPath;		// 路径
	private String seoTitle;		// 标题
	private String seoKeyword;		// 关键字
	private String seoDesc;		// 描述
	private String statusCode;		// 状态码
	private String seoImgJson;		// 图片地址
	
	public TestSeo() {
		super();
	}

	public TestSeo(String id){
		super(id);
	}

	@Length(min=0, max=64, message="路径长度必须介于 0 和 64 之间")
	public String getUrlPath() {
		return urlPath;
	}

	public void setUrlPath(String urlPath) {
		this.urlPath = urlPath;
	}
	
	@Length(min=0, max=64, message="标题长度必须介于 0 和 64 之间")
	public String getSeoTitle() {
		return seoTitle;
	}

	public void setSeoTitle(String seoTitle) {
		this.seoTitle = seoTitle;
	}
	
	@Length(min=0, max=64, message="关键字长度必须介于 0 和 64 之间")
	public String getSeoKeyword() {
		return seoKeyword;
	}

	public void setSeoKeyword(String seoKeyword) {
		this.seoKeyword = seoKeyword;
	}
	
	@Length(min=0, max=64, message="描述长度必须介于 0 和 64 之间")
	public String getSeoDesc() {
		return seoDesc;
	}

	public void setSeoDesc(String seoDesc) {
		this.seoDesc = seoDesc;
	}
	
	@Length(min=0, max=2, message="状态码长度必须介于 0 和 2 之间")
	public String getStatusCode() {
		return statusCode;
	}

	public void setStatusCode(String statusCode) {
		this.statusCode = statusCode;
	}
	
	@Length(min=0, max=6000, message="图片地址长度必须介于 0 和 6000 之间")
	public String getSeoImgJson() {
		return seoImgJson;
	}

	public void setSeoImgJson(String seoImgJson) {
		this.seoImgJson = seoImgJson;
	}
	
}