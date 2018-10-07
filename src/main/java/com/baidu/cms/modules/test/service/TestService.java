/**
 *
 */
package com.baidu.cms.modules.test.service;

import com.baidu.cms.modules.test.dao.TestDao;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baidu.cms.common.service.CrudService;
import com.baidu.cms.modules.test.entity.Test;

/**
 * 测试Service
 * @author ThinkGem
 * @version 2013-10-17
 */
@Service
@Transactional(readOnly = true)
public class TestService extends CrudService<TestDao, Test> {

}
