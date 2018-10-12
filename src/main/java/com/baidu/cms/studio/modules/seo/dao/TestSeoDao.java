/**
 *
 */
package com.baidu.cms.studio.modules.seo.dao;

import com.baidu.cms.studio.modules.seo.entity.TestSeo;
import com.baidu.cms.common.persistence.CrudDao;
import com.baidu.cms.common.persistence.annotation.MyBatisDao;

/**
 * 官网SEODAO接口
 * @author shiyanjun
 * @version 2018-10-07
 */
@MyBatisDao
public interface TestSeoDao extends CrudDao<TestSeo> {
	
}