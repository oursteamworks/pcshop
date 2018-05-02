layui.use(['table', 'form', 'jquery'], function () {
    var $ = layui.jquery,
        table = layui.table,
        form = layui.form;
    //表格的渲染
    table.render({
        //elem url cols 表格属性
        //field title sort 列属性
        page: true,
        elem: '#categoryList',
        url: '../../category/listCategorys',
        cols: [[
            {type: 'checkbox'},
            {field: 'cid', title: 'ID', sort: true},
            {field: 'cname', title: '分类名称'},
            {field: 'admName', title: '管理员名称'},
            {field: 'cstatus', title: '分类状态', templet: '#shelfTpl'},
            {field: '', title: '操作', templet: '#operateTpl'}
        ]]
    });
    var active = {
        reload:function(){
            var cname = $('#cname').val();
            if($.trim(cname).length>0){
                table.reload('categoryList',{
                    page:{curr:1},
                    where:{cname:cname}
                });
            }
        },
        getCheckData: function () {
            //获取被选中的数据
            var cstatus = table.checkStatus('categoryList');
            var data = cstatus.data;

            if (data.length > 0) {
                var flg = confirm("确定要删除所选分类吗?");
                if (flg == true) {
                    var ids = [];
                    for (var i = 0; i < data.length; i++) {
                        ids.push(data[i].cid);
                    }
                    $.post(
                        //url:要访问的web
                        '../../category/batch',
                        //data:携带的数据
                        {'ids[]': ids},
                        //success:成功的回调函数
                        function (data) {
                            if (data > 0) {
                                //删除成功后加载当前页
                                $('.layui-laypage-btn').click();

                                //删除成功后重载到第一页
                                // table.reload('articleList',{
                                    //     page:{curr:1}
                                    // });
                                layer.msg("删除成功", {
                                    icon: 1
                                });
                            } else {
                                layer.msg("删除失败", {
                                    icon: 2
                                });
                            }
                        }
                     );
                }
            } else {
                layer.msg('要选择数据之后才能进行操作哦!', {icon: 5})
            }
        }
    };
    //删除按钮的操作代码
    $(".demoTable .layui-btn").on('click', function () {
        var type = $(this).data('type')//获取点击的按钮:getCheckData
        active[type] ? active[type].call(this) : '';
    });
    //模糊查询的操作代码
    $(".we-search .layui-btn").on('click', function () {
        var type = $(this).data('type')//获取点击的按钮:getCheckData
        active[type] ? active[type].call(this) : '';
    });
    form.on('switch(cstatus)',function(data){
        var cid = data.value;
        var cstatus = this.checked?'1':'2';
        //alert("cid+"+cid);
        //alert("cstatus+"+cstatus);
        $.post(
            '../../category/editCstatusByCid',
            {"cid":cid,'cstatus':cstatus},
            function(result){
                if(result){
                    layer.msg("修改成功",{icon:1});
                }else{
                    layer.msg("修改失败",{icon:2});
                }
            }
        )
    });
});
