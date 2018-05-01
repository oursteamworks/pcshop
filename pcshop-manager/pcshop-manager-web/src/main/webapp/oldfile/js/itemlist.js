layui.extend({
    admin: '{/}../js/admin'
});

layui.use(['table','form','admin'],function(){
    var table = layui.table,
        form = layui.form,
        admin = layui.admin;
    //表格的渲染
    table.render({
        //elem url cols 表格属性
        //field title sort 列属性
        page:true,
        elem:'#articleList',
        url:'../../items',
        cols:[[
            {field:'id',title:'ID',sort:true},
            {field:'title',title:'商品名称'},
            {field:'sellPoint',title:'商品卖点'},
            {field:'cid',title:'分类编号'}
        ]]
    });
});

