package com.baidu.cms.common.aop;

import com.baidu.cms.common.annotation.DataSource;
import com.baidu.cms.common.datasource.DataSourceKey;
import com.baidu.cms.common.datasource.DynamicDatasourceHolder;
import com.baidu.cms.common.utils.Reflections;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

import java.lang.reflect.Method;

/**
 * 定义指定数据源的AOP切面
 *
 * @author: shiyanjun
 * @Date: 2018/10/10 上午9:51
 */
@Aspect
@Component
public class DataSourceAspect {

    protected static final ThreadLocal<String> preDatasourceHolder = new ThreadLocal<String>();

    /**
     * 数据源切面
     */
    @Pointcut("execution(* com.baidu.cms.modules.ai..*Service.*(..))")
    public void pointcut() {

    }

    /*@Around("pointcut()")
    public Object around(ProceedingJoinPoint pjp) throws Throwable {
        System.out.println("---------------------调用前---------------------");
        DynamicDatasourceHolder.setDataSourceKey(DataSourceKey.SLAVE);
        Object result = pjp.proceed();
        System.out.println("---------------------调用后---------------------");
        DynamicDatasourceHolder.setDataSourceKey(DataSourceKey.MASTER);
        return result;
    }*/

    /**
     * 根据@DataSource的属性值设置不同的dataSourceKey,以供DynamicDataSource
     */
    @Before("pointcut()")
    public void changeDataSourceBeforeMethodExecution(JoinPoint point) {

        DynamicDatasourceHolder.setDataSourceKey(DataSourceKey.SLAVE);

        // 拿到anotation中配置的数据源
        String key = determineDatasource(point);
        // 没有配置实用默认数据源
        if (key == null) {
            DynamicDatasourceHolder.setDataSourceKey(null);
            return;
        }
        preDatasourceHolder.set(DynamicDatasourceHolder.getDataSourceKey());
        // 将数据源设置到数据源持有者
        DynamicDatasourceHolder.setDataSourceKey(key);

    }

    /**
     * 如果需要修改获取数据源的逻辑，请重写此方法
     *
     * @param point
     * @return
     */
    @SuppressWarnings("rawtypes")
    protected String determineDatasource(JoinPoint point) {
        String methodName = point.getSignature().getName();
        Class targetClass = point.getSignature().getDeclaringType();
        String dataSourceForTargetClass = resolveDataSourceFromClass(targetClass);
        String dataSourceForTargetMethod = resolveDataSourceFromMethod(targetClass, methodName);
        String key = determinateDataSource(dataSourceForTargetClass, dataSourceForTargetMethod);
        return key;
    }


    /**
     * 方法执行完毕以后，数据源切换回之前的数据源。
     * 比如foo()方法里面调用bar()，但是bar()另外一个数据源，
     * bar()执行时，切换到自己数据源，执行完以后，要切换到foo()所需要的数据源，以供
     * foo()继续执行。
     */
    @After("pointcut()")
    public void restoreDataSourceAfterMethodExecution() {
        DynamicDatasourceHolder.setDataSourceKey(preDatasourceHolder.get());
        preDatasourceHolder.remove();

        DynamicDatasourceHolder.setDataSourceKey(DataSourceKey.MASTER);
    }


    /**
     * @param targetClass
     * @param methodName
     * @return
     */
    @SuppressWarnings("rawtypes")
    private String resolveDataSourceFromMethod(Class targetClass, String methodName) {

        Method m = Reflections.findUniqueMethod(targetClass, methodName);
        if (m != null) {
            DataSource choDs = m.getAnnotation(DataSource.class);
            return resolveDataSourcename(choDs);
        }
        return null;
    }

    /**
     * 最终数据源，如果方法上设置有数据源，则以方法上的为准，
     * 如果方法上没有设置，则以类上的为准，
     * 如果类上没有设置，则使用默认数据源
     *
     * @param classDS
     * @param methodDS
     * @return
     */
    private String determinateDataSource(String classDS, String methodDS) {
        return methodDS == null ? classDS : methodDS;
    }

    /**
     * 类级别的 @DataSource的解析
     *
     * @param targetClass
     * @return
     */
    @SuppressWarnings({"unchecked", "rawtypes"})
    private String resolveDataSourceFromClass(Class targetClass) {
        DataSource classAnnotation = (DataSource) targetClass.getAnnotation(DataSource.class);
        return null != classAnnotation ? resolveDataSourcename(classAnnotation) : null;
    }

    /**
     * 组装DataSource的名字
     *
     * @param ds
     * @return
     */
    private String resolveDataSourcename(DataSource ds) {
        return ds == null ? null : ds.value();
    }


}
