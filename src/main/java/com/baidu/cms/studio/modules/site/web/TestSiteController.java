/**
 *
 */
package com.baidu.cms.studio.modules.site.web;

import com.baidu.cms.common.config.Global;
import com.baidu.cms.common.persistence.Page;
import com.baidu.cms.common.utils.StringUtils;
import com.baidu.cms.common.web.BaseController;
import com.baidu.cms.studio.modules.site.entity.TestSite;
import com.baidu.cms.studio.modules.site.service.TestSiteService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 测试站点Controller
 * @author shiyanjun
 * @version 2018-10-10
 */
@Controller
@RequestMapping(value = "${adminPath}/site/testSite")
public class TestSiteController extends BaseController {

	@Autowired
	private TestSiteService testSiteService;
	
	@ModelAttribute
	public TestSite get(@RequestParam(required=false) String id) {
		TestSite entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = testSiteService.get(id);
		}
		if (entity == null){
			entity = new TestSite();
		}
		return entity;
	}

	@RequiresPermissions("site:testSite:view")
	@RequestMapping(value = {"list", ""})
	public String list(TestSite testSite, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<TestSite> page = testSiteService.findPage(new Page<TestSite>(request, response), testSite);
		model.addAttribute("page", page);
		return "studio/modules/site/testSiteList";
	}

	@RequiresPermissions("site:testSite:view")
	@RequestMapping(value = "form")
	public String form(TestSite testSite, Model model) {
		model.addAttribute("testSite", testSite);
		return "studio/modules/site/testSiteForm";
	}

	@RequiresPermissions("site:testSite:edit")
	@RequestMapping(value = "save")
	public String save(TestSite testSite, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, testSite)){
			return form(testSite, model);
		}
		testSiteService.save(testSite);
		addMessage(redirectAttributes, "保存测试站点成功");
		return "redirect:"+Global.getAdminPath()+"/site/testSite/?repage";
	}
	
	@RequiresPermissions("site:testSite:edit")
	@RequestMapping(value = "delete")
	public String delete(TestSite testSite, RedirectAttributes redirectAttributes) {
		testSiteService.delete(testSite);
		addMessage(redirectAttributes, "删除测试站点成功");
		return "redirect:"+Global.getAdminPath()+"/site/testSite/?repage";
	}

}