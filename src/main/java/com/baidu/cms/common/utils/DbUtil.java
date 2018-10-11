package com.baidu.cms.common.utils;

import com.baidu.cms.common.config.Global;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 *  数据库有关工具类
 *  @author: shiyanjun
 *  @Date: 2018/10/11 上午11:11
 */
public class DbUtil {

    /**
     *  获取数据库和路由key的map集合
     *  @author: shiyanjun
     *  @Date: 2018/10/11 上午10:27
     */
    public static Map<String, String> getDataSourceKeyMap () {
        Map<String, String> map = new HashMap<String, String>();
        List<String> propKeys = Global.getPropKeys();
        for (String key : propKeys) {
            if (key.startsWith("jdbc.") && key.endsWith(".url")) {
                String val = Global.getConfig(key);
                map.put(DbUtil.resolveDataSourceKey(key), DbUtil.resolveDbName(val));
            }
        }
        return map;
    }

    /**
     *  从jdbcUrl中解析出数据库名
     *  @author: shiyanjun
     *  @Date: 2018/10/11 上午10:35
     */
    private static String resolveDbName(String jdbcUrl) {
        if (StringUtils.isNotBlank(jdbcUrl) && jdbcUrl.startsWith("jdbc:mysql:")) {
            String[] split = jdbcUrl.split(":");
            String len = split[split.length - 1];
            int last = len.lastIndexOf("?") == -1 ? len.length() : len.lastIndexOf("?");
            String dbName = len.substring(len.indexOf("/") + 1, last);
            return dbName;
        }
        return null;
    }

    /**
     *  根据jdbcUrl的key解析数据库路由key
     *  @author: shiyanjun
     *  @Date: 2018/10/11 上午10:32
     */
    private static String resolveDataSourceKey (String jdbcUrlPropKey) {
        if (StringUtils.isNotBlank(jdbcUrlPropKey)) {
            String[] split = jdbcUrlPropKey.split("\\.");
            if (split != null && split.length > 1) {
                return split[1].toUpperCase();
            }
        }
        return null;
    }

    /**
     *  根据路由key获取数据库名称
     *  @author: shiyanjun
     *  @Date: 2018/10/11 上午10:58
     */
    public static String getDbName(String dataSourceKey) {
        return DbUtil.getDataSourceKeyMap().get(dataSourceKey);
    }

    /**
     *  根据数据库名称获取数据库路由key
     *  @author: shiyanjun
     *  @Date: 2018/10/11 上午11:03
     */
    public static String getDataSourceKey(String dbName) {
        Map<String, String> map = DbUtil.getDataSourceKeyMap();
        Set<String> keySet = map.keySet();
        Iterator<String> it = keySet.iterator();
        while (it.hasNext()) {
            String key = it.next();
            String value = map.get(key);
            if (value.equalsIgnoreCase(dbName)) {
                return key;
            }
        }
        return null;
    }

    public static void main(String[] args) {
        String jdbcUrl = "jdbc:mysql://localhost:3306/db_master_myjeesite";
        String[] split1 = jdbcUrl.split(":");
        String len = split1[split1.length - 1];
        int last = len.lastIndexOf("?") == -1 ? len.length() : len.lastIndexOf("?");
        String dbName = len.substring(len.indexOf("/") + 1, last);
        System.out.println(dbName);

        System.out.println(DbUtil.getDataSourceKey("db_master_myjeesite"));
        System.out.println(DbUtil.getDataSourceKey("xxxx"));
        System.out.println(DbUtil.getDataSourceKey("d_ai_forum_t"));
        System.out.println(DbUtil.getDbName("MASTER"));
        System.out.println(DbUtil.getDbName("SLAVE1"));
        System.out.println(DbUtil.getDbName("SLAVE2"));
    }
}
