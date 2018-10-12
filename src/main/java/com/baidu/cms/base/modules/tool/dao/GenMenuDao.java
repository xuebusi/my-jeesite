/**
 *
 */
package com.baidu.cms.base.modules.tool.dao;

import com.baidu.cms.common.persistence.CrudDao;
import com.baidu.cms.common.persistence.annotation.MyBatisDao;
import com.baidu.cms.base.modules.tool.entity.GenMenu;

/**
 * 生成菜单DAO接口
 * @author shiyanjun
 * @version 2018-10-12
 */
@MyBatisDao
public interface GenMenuDao extends CrudDao<GenMenu> {
	
}