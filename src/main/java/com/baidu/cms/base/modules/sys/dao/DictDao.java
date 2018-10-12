/**
 *
 */
package com.baidu.cms.base.modules.sys.dao;

import java.util.List;

import com.baidu.cms.base.modules.sys.entity.Dict;
import com.baidu.cms.common.persistence.CrudDao;
import com.baidu.cms.common.persistence.annotation.MyBatisDao;

/**
 * 字典DAO接口
 * @author ThinkGem
 * @version 2014-05-16
 */
@MyBatisDao
public interface DictDao extends CrudDao<Dict> {

	public List<String> findTypeList(Dict dict);
	
}
