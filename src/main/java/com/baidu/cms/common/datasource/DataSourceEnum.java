package com.baidu.cms.common.datasource;

/**
 * 数据库类型
 *
 * @author: shiyanjun
 * @Date: 2018/10/9 下午4:33
 */
public enum DataSourceEnum {

    /**
     * 默认库
     */
    BASE("BASE"),

    /**
     * 业务库
     */
    STUDIO("STUDIO");


    private String key;

    DataSourceEnum(String key) {
        this.key = key;
    }

    public String getKey() {
        return key;
    }
}
