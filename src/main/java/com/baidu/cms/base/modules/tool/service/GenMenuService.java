/**
 *
 */
package com.baidu.cms.base.modules.tool.service;

import java.util.List;

import com.baidu.cms.base.modules.sys.entity.Menu;
import com.baidu.cms.base.modules.sys.service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baidu.cms.common.persistence.Page;
import com.baidu.cms.common.service.CrudService;
import com.baidu.cms.base.modules.tool.entity.GenMenu;
import com.baidu.cms.base.modules.tool.dao.GenMenuDao;

/**
 * 生成菜单Service
 * @author shiyanjun
 * @version 2018-10-12
 */
@Service
@Transactional(readOnly = true)
public class GenMenuService extends CrudService<GenMenuDao, GenMenu> {

	@Autowired
	private SystemService systemService;

	public GenMenu get(String id) {
		return super.get(id);
	}
	
	public List<GenMenu> findList(GenMenu genMenu) {
		return super.findList(genMenu);
	}
	
	public Page<GenMenu> findPage(Page<GenMenu> page, GenMenu genMenu) {
		return super.findPage(page, genMenu);
	}
	
	@Transactional(readOnly = false)
	public void save(GenMenu genMenu) {

		// 插入第1个菜单
		Menu menu1 = new Menu();
		menu1.setName(genMenu.getMenuName());
		menu1.setParent(new Menu("2"));
		menu1.setParentIds("0,1,2,");
		systemService.saveMenu(menu1);

		// 插入第2个菜单
		Menu menu2 = new Menu();
		menu2.setName(genMenu.getMenuName());
		menu2.setParent(new Menu(menu1.getId()));
		menu2.setParentIds(menu1.getParentIds() + menu1.getId());
		menu2.setHref(genMenu.getHref());
		systemService.saveMenu(menu2);

		// 插入第3个菜单
		Menu menu3 = new Menu();
		menu3.setName("查看");
		menu3.setParent(new Menu(menu2.getId()));
		menu3.setIsShow("0");
		menu3.setParentIds(menu2.getParentIds() + menu2.getId());
		menu3.setPermission(genMenu.getViewPermUrl());
		systemService.saveMenu(menu3);

		// 插入第4个菜单
		Menu menu4 = new Menu();
		menu4.setName("修改");
		menu4.setParent(new Menu(menu2.getId()));
		menu4.setIsShow("0");
		menu4.setParentIds(menu2.getParentIds() + menu2.getId());
		menu4.setPermission(genMenu.getEditPermUrl());
		systemService.saveMenu(menu4);

		super.save(genMenu);
	}
	
	@Transactional(readOnly = false)
	public void delete(GenMenu genMenu) {
		super.delete(genMenu);
	}
	
}