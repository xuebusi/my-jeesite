/**
 *
 */
package com.baidu.cms.test.dao;

import com.baidu.cms.common.persistence.TreeDao;
import com.baidu.cms.common.persistence.annotation.MyBatisDao;
import com.baidu.cms.test.entity.TestTree;

/**
 * 树结构生成DAO接口
 * @author ThinkGem
 * @version 2015-04-06
 */
@MyBatisDao
public interface TestTreeDao extends TreeDao<TestTree> {
	
}