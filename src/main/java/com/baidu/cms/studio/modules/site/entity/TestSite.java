/**
 *
 */
package com.baidu.cms.studio.modules.site.entity;

import org.hibernate.validator.constraints.Length;

import com.baidu.cms.common.persistence.DataEntity;

/**
 * 测试站点Entity
 * @author shiyanjun
 * @version 2018-10-10
 */
public class TestSite extends DataEntity<TestSite> {
	
	private static final long serialVersionUID = 1L;
	private String siteName;		// site_name
	
	public TestSite() {
		super();
	}

	public TestSite(String id){
		super(id);
	}

	@Length(min=1, max=100, message="site_name长度必须介于 1 和 100 之间")
	public String getSiteName() {
		return siteName;
	}

	public void setSiteName(String siteName) {
		this.siteName = siteName;
	}
	
}