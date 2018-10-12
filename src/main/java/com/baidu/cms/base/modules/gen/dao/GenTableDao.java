/**
 *
 */
package com.baidu.cms.base.modules.gen.dao;

import com.baidu.cms.base.modules.gen.entity.GenTable;
import com.baidu.cms.common.persistence.CrudDao;
import com.baidu.cms.common.persistence.annotation.MyBatisDao;

/**
 * 业务表DAO接口
 * @author ThinkGem
 * @version 2013-10-15
 */
@MyBatisDao
public interface GenTableDao extends CrudDao<GenTable> {
	
}
