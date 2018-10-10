package com.baidu.cms.common.datasource;

/**
 * 数据库类型
 *
 * @author: shiyanjun
 * @Date: 2018/10/9 下午4:33
 */
public enum DataSourceEnum {

    /**
     * 主库
     */
    MASTER("MASTER"),

    /**
     * 从库1
     */
    SLAVE1("SLAVE1"),

    /**
     * 从库2
     */
    SLAVE2("SLAVE2");


    private String key;

    DataSourceEnum(String key) {
        this.key = key;
    }

    public String getKey() {
        return key;
    }
}
