/**
 *
 */
package com.baidu.cms.modules.sys.dao;

import com.baidu.cms.modules.sys.entity.Area;
import com.baidu.cms.common.persistence.TreeDao;
import com.baidu.cms.common.persistence.annotation.MyBatisDao;

/**
 * 区域DAO接口
 * @author ThinkGem
 * @version 2014-05-16
 */
@MyBatisDao
public interface AreaDao extends TreeDao<Area> {
	
}
