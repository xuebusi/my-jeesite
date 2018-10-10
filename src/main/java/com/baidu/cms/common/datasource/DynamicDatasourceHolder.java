package com.baidu.cms.common.datasource;

import org.springframework.util.Assert;

/**
 * 使用ThreadLocal来记录当前线程中的数据源的key
 *
 *  @author: shiyanjun
 *  @Date: 2018/10/9 下午4:34
 */
public class DynamicDatasourceHolder {

    private static final ThreadLocal<String> holder = new ThreadLocal<String>();

    /**
     * 设置数据源key
     * @param key
     */
    public static void putDataSourceKey(String key) {
        Assert.notNull(key, "DataSource routing key cannot be null");
        holder.set(key);
    }

    /**
     * 获取数据源key
     * @return
     */
    public static String getDataSourceKey() {
        return holder.get();
    }

    /**
     * 标记写库
     */
    public static void markMaster(){
        putDataSourceKey(DataSourceKey.DB_MASTER.name());
    }

    /**
     * 标记读库
     */
    public static void markSlave(){
        putDataSourceKey(DataSourceKey.DB_SLAVE.name());
    }

}