/**
 *
 */
package com.baidu.cms.studio.modules.site.service;

import com.baidu.cms.common.annotation.DataSource;
import com.baidu.cms.common.datasource.DataSourceEnum;
import com.baidu.cms.common.persistence.Page;
import com.baidu.cms.common.service.CrudService;
import com.baidu.cms.studio.modules.site.dao.TestSiteDao;
import com.baidu.cms.studio.modules.site.entity.TestSite;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 测试站点Service
 * @author shiyanjun
 * @version 2018-10-10
 */
@Service
@DataSource(DataSourceEnum.SLAVE1)
@Transactional(readOnly = true)
public class TestSiteService extends CrudService<TestSiteDao, TestSite> {

	public TestSite get(String id) {
		return super.get(id);
	}
	
	public List<TestSite> findList(TestSite testSite) {
		return super.findList(testSite);
	}
	
	public Page<TestSite> findPage(Page<TestSite> page, TestSite testSite) {
		return super.findPage(page, testSite);
	}
	
	@Transactional(readOnly = false)
	public void save(TestSite testSite) {
		super.save(testSite);
	}
	
	@Transactional(readOnly = false)
	public void delete(TestSite testSite) {
		super.delete(testSite);
	}
	
}