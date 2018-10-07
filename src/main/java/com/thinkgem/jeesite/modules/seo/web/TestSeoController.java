/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.seo.web;

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

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.seo.entity.TestSeo;
import com.thinkgem.jeesite.modules.seo.service.TestSeoService;

/**
 * 官网SEOController
 * @author shiyanjun
 * @version 2018-10-07
 */
@Controller
@RequestMapping(value = "${adminPath}/seo/testSeo")
public class TestSeoController extends BaseController {

	@Autowired
	private TestSeoService testSeoService;
	
	@ModelAttribute
	public TestSeo get(@RequestParam(required=false) String id) {
		TestSeo entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = testSeoService.get(id);
		}
		if (entity == null){
			entity = new TestSeo();
		}
		return entity;
	}
	
	@RequiresPermissions("seo:testSeo:view")
	@RequestMapping(value = {"list", ""})
	public String list(TestSeo testSeo, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<TestSeo> page = testSeoService.findPage(new Page<TestSeo>(request, response), testSeo); 
		model.addAttribute("page", page);
		return "modules/seo/testSeoList";
	}

	@RequiresPermissions("seo:testSeo:view")
	@RequestMapping(value = "form")
	public String form(TestSeo testSeo, Model model) {
		model.addAttribute("testSeo", testSeo);
		return "modules/seo/testSeoForm";
	}

	@RequiresPermissions("seo:testSeo:edit")
	@RequestMapping(value = "save")
	public String save(TestSeo testSeo, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, testSeo)){
			return form(testSeo, model);
		}
		testSeoService.save(testSeo);
		addMessage(redirectAttributes, "保存官网SEO成功");
		return "redirect:"+Global.getAdminPath()+"/seo/testSeo/?repage";
	}
	
	@RequiresPermissions("seo:testSeo:edit")
	@RequestMapping(value = "delete")
	public String delete(TestSeo testSeo, RedirectAttributes redirectAttributes) {
		testSeoService.delete(testSeo);
		addMessage(redirectAttributes, "删除官网SEO成功");
		return "redirect:"+Global.getAdminPath()+"/seo/testSeo/?repage";
	}

}