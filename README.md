# my-jeesite

基于jeesite进行二次开发

踩坑1:
    在页面上使用代码生成器在填写业务表配置时，如果数据库表的主键ID使用Long类型，则页面上的java类型下拉框选择Long类型，插入列不要勾选，
    这样生产的mapper.xml中的insert语句中就不会插入id列，而使用数据库的自增机制（前提时数据库id字段已经设置为自增）。
    如果数据库表主键ID使用uuid，那么页面上的java类型下拉框要选择String类型，而且插入列一定要勾选，否则执行插入数据会提示主键ID没有默认值。
    
    
