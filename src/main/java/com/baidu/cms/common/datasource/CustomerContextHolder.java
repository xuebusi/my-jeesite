package com.baidu.cms.common.datasource;

import org.springframework.util.Assert;

/**
 *
 *  @author: shiyanjun
 *  @Date: 2018/10/9 下午4:34
 */
public class CustomerContextHolder {

    private static final ThreadLocal<String> contextHolder = new ThreadLocal<String>();

    public static void setCustomerType(String customerType) {
        Assert.notNull(customerType, "customerType cannot be null");
        contextHolder.set(customerType);
    }

    public static String getCustomerType() {
        return contextHolder.get();
    }

    public static void clearCustomerType() {
        contextHolder.remove();
    }
}