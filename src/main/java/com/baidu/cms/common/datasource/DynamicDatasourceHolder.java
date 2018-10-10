package com.baidu.cms.common.datasource;

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
    public static void setDataSourceKey(String key) {
        System.out.println(">>>>>>>>设置数据源key:" + key);
        holder.set(key);
    }

    /**
     * 获取数据源key
     * @return
     */
    public static String getDataSourceKey() {
        System.out.println(">>>>>>>>获取数据源key:" + holder.get());
        return holder.get();
    }

    /**
     * 清除数据源key
     */
    public static void clearDataSourceKey() {
        holder.remove();
    }

}