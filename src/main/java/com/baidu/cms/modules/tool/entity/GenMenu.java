/**
 *
 */
package com.baidu.cms.modules.tool.entity;

import org.hibernate.validator.constraints.Length;

import com.baidu.cms.common.persistence.DataEntity;

/**
 * 生成菜单Entity
 * @author shiyanjun
 * @version 2018-10-12
 */
public class GenMenu extends DataEntity<GenMenu> {
	
	private static final long serialVersionUID = 1L;
	private String menuName;		// 名称
	private String href;		// 类访问URL
	private String viewPermUrl;		// 查看权限URL
	private String editPermUrl;		// 修改权限URL
	
	public GenMenu() {
		super();
	}

	public GenMenu(String id){
		super(id);
	}

	@Length(min=1, max=50, message="名称长度必须介于 1 和 50 之间")
	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	
	@Length(min=1, max=50, message="类访问URL长度必须介于 1 和 50 之间")
	public String getHref() {
		return href;
	}

	public void setHref(String href) {
		this.href = href;
	}
	
	@Length(min=1, max=50, message="查看权限URL长度必须介于 1 和 50 之间")
	public String getViewPermUrl() {
		return viewPermUrl;
	}

	public void setViewPermUrl(String viewPermUrl) {
		this.viewPermUrl = viewPermUrl;
	}
	
	@Length(min=1, max=50, message="修改权限URL长度必须介于 1 和 50 之间")
	public String getEditPermUrl() {
		return editPermUrl;
	}

	public void setEditPermUrl(String editPermUrl) {
		this.editPermUrl = editPermUrl;
	}
	
}