/**
 *
 */
package com.baidu.cms.modules.sys.dao;

import com.baidu.cms.modules.sys.entity.Log;
import com.baidu.cms.common.persistence.CrudDao;
import com.baidu.cms.common.persistence.annotation.MyBatisDao;

/**
 * 日志DAO接口
 * @author ThinkGem
 * @version 2014-05-16
 */
@MyBatisDao
public interface LogDao extends CrudDao<Log> {

}
