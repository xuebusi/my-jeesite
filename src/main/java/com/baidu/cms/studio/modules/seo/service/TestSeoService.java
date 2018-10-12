/**
 *
 */
package com.baidu.cms.studio.modules.seo.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baidu.cms.common.persistence.Page;
import com.baidu.cms.common.service.CrudService;
import com.baidu.cms.studio.modules.seo.entity.TestSeo;
import com.baidu.cms.studio.modules.seo.dao.TestSeoDao;

/**
 * 官网SEOService
 * @author shiyanjun
 * @version 2018-10-07
 */
@Service
@Transactional(readOnly = true)
public class TestSeoService extends CrudService<TestSeoDao, TestSeo> {

	public TestSeo get(String id) {
		return super.get(id);
	}
	
	public List<TestSeo> findList(TestSeo testSeo) {
		return super.findList(testSeo);
	}
	
	public Page<TestSeo> findPage(Page<TestSeo> page, TestSeo testSeo) {
		return super.findPage(page, testSeo);
	}
	
	@Transactional(readOnly = false)
	public void save(TestSeo testSeo) {
		super.save(testSeo);
	}
	
	@Transactional(readOnly = false)
	public void delete(TestSeo testSeo) {
		super.delete(testSeo);
	}
	
}