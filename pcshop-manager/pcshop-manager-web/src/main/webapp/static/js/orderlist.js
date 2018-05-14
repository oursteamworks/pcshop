layui.use(['jquery', 'table', 'form', 'layer'], function () {
    var $ = layui.jquery,
        table = layui.table,
        form = layui.form,
        layer = layui.layer;
    //表格的渲染
    table.render({
        //elem url cols 表格属性
        //field title sort 列属性
        page: true,
        elem: '#articleList',
        url: '../../order',
        cols: [[
            {type: 'checkbox'},
            {field: 'oid', title: '订单编号', sort: true},
            {field: 'oname', title: '订单名称'},
            {field: 'otime', title: '订单时间', templet: "#otime"},
            {field: 'productname', title: '订单商品'},
            {field: 'pcount', title: '订单商品数量'},
            {field: 'privce', title: '订单价格'},
            {field: 'oaddress', title: '收货地址'},
            {field: 'username', title: '客户'},
            {field: 'oflag', title: '订单状态'},
            {field: 'adminname', title: '管理员'},
          {field: 'poperate', title: '操作管理', width: 220, templet: '#operateTpl'}
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
            var oflag = table.checkStatus('articleList');
            var data = oflag.data;
            if (data.length > 0) {
                //至少选中了一行
                //1 获得选中行的ID形成数组
                var ids = [];
                for (var i = 0; i < data.length; i++) {
                    ids.push(data[i].oid);
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
                    '../../order/batch',
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

    //点击添加按钮的操作代码
    window.WeAdminShow = function (title, url, w, h) {
        if (title == null || title == '') {
            title = false;
        }
        ;
        if (url == null || url == '') {
            url = "404.html";
        }
        ;
        if (w == null || w == '') {
            w = ($(window).width() * 0.9);
        }
        ;
        if (h == null || h == '') {
            h = ($(window).height() - 50);
        }
        ;
        layer.open({
            type: 2,
            area: [w + 'px', h + 'px'],
            fix: false, //不固定
            maxmin: true,
            shadeClose: true,
            shade: 0.4,
            title: title,
            content: url
        });
    }

    /*弹出层+传递ID参数*/
    window.WeAdminEdit = function (title, url,id, w, h) {
        $.ajax({
            url:"../../updateOrder",
            data:{"oid":id},
    });

     if (title == null || title == '') {
            title = false;
        }
        ;
        if (url == null || url == '') {
            url = "404.html";
        }
        ;
        if (w == null || w == '') {
            w = ($(window).width() * 0.9);
        }
        ;
        if (h == null || h == '') {
            h = ($(window).height() - 50);
        }
        ;
        layer.open({
            type: 2,
            area: [w + 'px', h + 'px'],
            fix: false, //不固定
            maxmin: true,
            shadeClose: true,
            shade: 0.4,
            title: title,
            content: url,
            success: function (layero, index) {
                //向iframe页的id=house的元素传值  // 参考 https://yq.aliyun.com/ziliao/133150
                var body = layer.getChildFrame('body', index);
                body.contents().find("#dataId").val(id);
                },
            error: function (layero, index) {
                alert("aaa");
            }
        });
    }

});  function removeOrder(obj){
    layer.confirm('您确定要删除该订单吗？', {
        btn: ['确定','取消'] //按钮
    }, function()
    {
        var oid = obj.value;
        //    alert(oid)
        $.ajax({
            url:"../../removeOrder",
            data:{"oid":oid},
            success:function(data){
                if(data>0){
                    //删除后刷新页面，是页面固定在当前页面
                    $('.layui-laypage-btn').click();
                    layer.msg("删除成功",{icon:1});
                }else{
                    layer.msg("删除失败",{icon:2});
                }
            }
        })
    });

}

