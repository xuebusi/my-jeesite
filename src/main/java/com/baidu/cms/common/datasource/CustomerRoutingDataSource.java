package com.baidu.cms.common.datasource;

import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;

/**
 *  自定义数据库路由
 *  @author: shiyanjun
 *  @Date: 2018/10/9 下午4:34
 */
public class CustomerRoutingDataSource extends AbstractRoutingDataSource {

    @Override
    protected Object determineCurrentLookupKey() {
        return CustomerContextHolder.getCustomerType();
    }
}

