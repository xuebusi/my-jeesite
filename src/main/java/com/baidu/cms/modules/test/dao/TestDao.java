/**
 *
 */
package com.baidu.cms.modules.test.dao;

import com.baidu.cms.common.persistence.CrudDao;
import com.baidu.cms.common.persistence.annotation.MyBatisDao;
import com.baidu.cms.modules.test.entity.Test;

/**
 * 测试DAO接口
 * @author ThinkGem
 * @version 2013-10-17
 */
@MyBatisDao
public interface TestDao extends CrudDao<Test> {
	
}
