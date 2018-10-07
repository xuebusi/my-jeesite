/**
 *
 */
package com.baidu.cms.test.dao;

import com.baidu.cms.common.persistence.CrudDao;
import com.baidu.cms.common.persistence.annotation.MyBatisDao;
import com.baidu.cms.test.entity.TestDataChild;

/**
 * 主子表生成DAO接口
 * @author ThinkGem
 * @version 2015-04-06
 */
@MyBatisDao
public interface TestDataChildDao extends CrudDao<TestDataChild> {
	
}