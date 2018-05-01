layui.extend({
    admin: '{/}../../static/js/admin'
});

layui.use(['jquery', 'table', 'form', 'admin', 'layer'], function () {
    var $ = layui.jquery,
        table = layui.table,
        form = layui.form,
        admin = layui.admin
    layer = layui.layer;
    //表格的渲染
    table.render({
        //elem url cols 表格属性
        //field title sort 列属性
        page: true,
        elem: '#articleList',
        url: '../../items',
        cols: [[
            {type: 'checkbox'},
            {field: 'id', title: 'ID', sort: true},
            {field: 'title', title: '商品名称'},
            {field: 'sellPoint', title: '商品卖点'},
            {field: 'catName', title: '分类名称'},
            {field: 'status', title: '商品状态', templet: '#shelfTpl'}
        ]]
    });

    var active = {
        reload: function () {
            //val() text() html() $.trim($('#title').val())
            var title = $('#title').val();
            // != !==  == ===
            if ($.trim(title).length > 0) {
                //表格重载
                //页面，重载完了应该加载第一页
                //查询条件,第一个title应该和实体类中的属性一致，第二个js的变量
                table.reload('articleList', {
                    page: {curr: 1},
                    where: {title: title}
                });
            }

        },
        getCheckData: function () {
            //批量删除的功能
            //先获取被选中的数据
            var status = table.checkStatus('articleList');
            var data = status.data;
            if (data.length > 0) {
                //至少选中了一行
                //1 获得选中行的ID形成数组
                var ids = [];
                for (var i = 0; i < data.length; i++) {
                    ids.push(data[i].id);
                }
                //2 异步提交请求
                // $.ajax({
                //     url:'',
                //     data:{},
                //     success:function(){},
                //     dataType:'json'
                // });
                $.post(
                    //url:这次异步请求提交到后台给谁处理
                    '../../item/batch',
                    //data:这次异步请求携带了什么数据给后台处理
                    {'ids[]': ids},
                    //success:这次异步请求处理成功的回调函数
                    function (data) {
                        if (data > 0) {
                            //删除后停留在原来页面
                            $('.layui-laypage-btn').click();
                            // //重载到第一页
                            // table.reload('articleList',{
                            //     page:{curr:1}
                            // });
                            // //刷新
                            // location.replace(location.href);
                            // 提示用户删除成功
                            layer.msg('删除成功', {
                                icon: 1
                            });
                        } else {
                            //提示用户删除失败
                            layer.msg('删除失败', {
                                icon: 2
                            });
                        }
                    }
                    //dataType:返回值的数据类型
                    // ,'json'
                );
                //3 成功后提醒客户完成操作
            } else {
                //没有选中行
                layer.msg('请选择数据后再批量删除！', {icon: 5})
            }
        }
    };

    //批量删除按钮的操作代码
    $('.demoTable .layui-btn').on('click', function () {
        var type = $(this).data('type');//getCheckData data-type="getCheckData"
        active[type] ? active[type].call(this) : '';
    });

    //点击模糊查询按钮的操作代码
    $('.we-search .layui-btn').on('click', function () {
        var type = $(this).data('type');//reload data-type="reload"
        active[type] ? active[type].call(this) : '';
    });

    //商品状态的开关事件
    form.on('switch(itemstatus)',function(){
        //调用类似于批量删除的功能
        //修改商品状态修改为1或者2
        //$.post();
    });

});

