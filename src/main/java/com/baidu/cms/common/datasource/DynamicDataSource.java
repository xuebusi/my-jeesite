package com.baidu.cms.common.datasource;

import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;

/**
 *  定义动态数据源
 *
 *  @author: shiyanjun
 *  @Date: 2018/10/9 下午4:34
 */
public class DynamicDataSource extends AbstractRoutingDataSource {

    /**
     * 使用DynamicDataSourceHolder保证线程安全
     * 并且得到当前线程中的数据源key
     */
    @Override
    protected Object determineCurrentLookupKey() {
        return DynamicDatasourceHolder.getDataSourceKey();
    }
}

