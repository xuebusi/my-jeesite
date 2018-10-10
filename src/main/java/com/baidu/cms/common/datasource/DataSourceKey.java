package com.baidu.cms.common.datasource;

/**
 * 数据库类型
 *
 * @author: shiyanjun
 * @Date: 2018/10/9 下午4:33
 */
public interface DataSourceKey {

    /**
     * 主库
     */
    String MASTER = "MASTER";

    /**
     * 从库
     */
    String SLAVE = "SLAVE";

}
