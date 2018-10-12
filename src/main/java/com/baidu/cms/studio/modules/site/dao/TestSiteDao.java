/**
 *
 */
package com.baidu.cms.studio.modules.site.dao;

import com.baidu.cms.common.persistence.CrudDao;
import com.baidu.cms.common.persistence.annotation.MyBatisDao;
import com.baidu.cms.studio.modules.site.entity.TestSite;

/**
 * 测试站点DAO接口
 * @author shiyanjun
 * @version 2018-10-10
 */
@MyBatisDao
public interface TestSiteDao extends CrudDao<TestSite> {
	
}