/**
 *
 */
package com.baidu.cms.base.modules.tool.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.baidu.cms.common.config.Global;
import com.baidu.cms.common.persistence.Page;
import com.baidu.cms.common.web.BaseController;
import com.baidu.cms.common.utils.StringUtils;
import com.baidu.cms.base.modules.tool.entity.GenMenu;
import com.baidu.cms.base.modules.tool.service.GenMenuService;

/**
 * 生成菜单Controller
 * @author shiyanjun
 * @version 2018-10-12
 */
@Controller
@RequestMapping(value = "${adminPath}/tool/genMenu")
public class GenMenuController extends BaseController {

	@Autowired
	private GenMenuService genMenuService;
	
	@ModelAttribute
	public GenMenu get(@RequestParam(required=false) String id) {
		GenMenu entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = genMenuService.get(id);
		}
		if (entity == null){
			entity = new GenMenu();
		}
		return entity;
	}
	
	@RequiresPermissions("tool:genMenu:view")
	@RequestMapping(value = {"list", ""})
	public String list(GenMenu genMenu, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<GenMenu> page = genMenuService.findPage(new Page<GenMenu>(request, response), genMenu); 
		model.addAttribute("page", page);
		return "base/modules/tool/genMenuList";
	}

	@RequiresPermissions("tool:genMenu:view")
	@RequestMapping(value = "form")
	public String form(GenMenu genMenu, Model model) {
		model.addAttribute("genMenu", genMenu);
		return "base/modules/tool/genMenuForm";
	}

	@RequiresPermissions("tool:genMenu:edit")
	@RequestMapping(value = "save")
	public String save(GenMenu genMenu, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, genMenu)){
			return form(genMenu, model);
		}
		genMenuService.save(genMenu);
		addMessage(redirectAttributes, "保存生成菜单成功");
		return "redirect:"+Global.getAdminPath()+"/tool/genMenu/?repage";
	}
	
	@RequiresPermissions("tool:genMenu:edit")
	@RequestMapping(value = "delete")
	public String delete(GenMenu genMenu, RedirectAttributes redirectAttributes) {
		genMenuService.delete(genMenu);
		addMessage(redirectAttributes, "删除生成菜单成功");
		return "redirect:"+Global.getAdminPath()+"/tool/genMenu/?repage";
	}

}