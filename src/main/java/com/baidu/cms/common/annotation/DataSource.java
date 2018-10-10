package com.baidu.cms.common.annotation;

import com.baidu.cms.common.datasource.DataSourceEnum;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 *  注解式数据源:用来进行数据源切换
 *
 *  @author: shiyanjun
 *  @Date: 2018/10/10 上午11:54
 */
@Target({ElementType.METHOD, ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface DataSource {

    DataSourceEnum value() default DataSourceEnum.MASTER;
}
