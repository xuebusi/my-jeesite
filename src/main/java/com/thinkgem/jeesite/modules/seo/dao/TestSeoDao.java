/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.seo.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.seo.entity.TestSeo;

/**
 * 官网SEODAO接口
 * @author shiyanjun
 * @version 2018-10-07
 */
@MyBatisDao
public interface TestSeoDao extends CrudDao<TestSeo> {
	
}