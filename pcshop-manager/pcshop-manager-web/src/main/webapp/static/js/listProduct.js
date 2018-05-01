layui.use(['table', 'form', 'jquery', 'layer'], function () {
    var table = layui.table;
    var $ = layui.jquery;
    var form = layui.form;
    var layer = layui.layer;
    //表格渲染
    table.render({
        elem: '#demo'
        , height: 505
        , url: '../../manager/listProductByPage' //数据接口
        , page: true //开启分页
        , cols: [[ //表头
              {type: 'checkbox'}
            , {field: 'pid', title: 'ID', width: 60}
            , {field: 'pname', title: '商品名称', width: 120}
            , {field: 'pimage', title: '图片', width: 120, templet: '#pimagecheckbox'}
            , {field: 'shopprice', title: '价格', width: 70}
            , {field: 'ishot', title: '是否热门', width: 100}
            , {field: 'pdesc', title: '商品描述', width: 200}
            , {field: 'pcount', title: '销量', width: 70}
            , {field: 'repertory', title: '库存', width: 70}
            , {field: 'pflag', title: '上下架', width: 80, templet: '#pflagcheckbox'}
            , {field: 'cname', title: '分类', width: 80}
            , {field: 'cost', title: '成本', width: 70}
            , {field: 'poperate', title: '编辑管理', width: 220, templet: '#operateTpl'}

        ]]
        , done: function (res, curr, count) {
            $("[data-field='ishot']").children().each(function () {
                if ($(this).text() == '1') {
                    $(this).text('是');
                } else if ($(this).text() == '0') {
                    $(this).text('否');
                }
            });
        }
    });

    var active = {
        //模糊查询
        reload:function(){
            //获取 id为 title 的表单的值
            var pname= $.trim($("#title").val());
            if(pname!=null && pname.length>0){
               //如果搜索框有条件 那么就重载表格 并且把条件传到后台
                table.reload("demo",{
                    //从第一页开始显示
                    page:{curr:1},
                    //查询条件
                    where:{pname:pname}
                });
            }
        },

        //批量删除的功能
        getCheckData: function () {
            //先获取被选中的数据
            var status = table.checkStatus('demo');
            var data = status.data;
            if (data.length > 0) {
                //至少选中了一行
                //1 获得选中行的ID形成数组
                var ids = [];
                for (var i = 0; i < data.length; i++) {
                    ids.push(data[i].pid);
                }
                $.post(
                    //url:这次异步请求提交到后台给谁处理
                    '../../manager/removeBatchProduct',
                    //data:这次异步请求携带了什么数据给后台处理
                    {'ids[]':ids},
                    //success:这次异步请求处理成功的回调函数
                    function(data){
                        if(data > 0){
                            //删除后刷新数据 并且停留在原来页面
                            $('.layui-laypage-btn').click();
                            layer.msg("删除成功", {icon: 1})
                        }else{
                            layer.msg("删除失败", {icon: 5})
                        }
                    }
                    //dataType:返回值的数据类型
                    /*'json'*/
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
    //模糊查询
    $('.we-search .layui-btn').on('click', function () {
        var type = $(this).data('type');//reload data-type="reload"
        active[type] ? active[type].call(this) : '';
    });

    //商品状态的开关事件
    form.on('switch(itemstatus)',function(data){
        //修改商品状态 上架或者下架   其实就是修改为pflag为1或者2
        var product = data.elem;
        var pid = product.value;
        $.post(
            '../../manager/updatePutaway',
            {"pid":pid},
            function(data){
                if(data>0){
                    layer.msg("更改成功",{icon:1})
                }else{
                    layer.msg("更改失败",{icon:2})
                }
            }
        );
    });

    //监听上架产品事件
    form.on('submit(add)', function (data) {
        var product=data.field;
        $.post(
             '../../manager/addProduct',
            {"cid":product.cid,"pname":product.pname,"pimage":"",
                         "shopprice":product.shopprice,"repertory":product.repertory,
                                 "cost":product.cost,"pdesc":product.pdesc},
            function(reslut){
                if(reslut!=0){
                   alert("上传成功")
                }else{
                    alert("上传失败")
                }
            },
            /*location.href="../../manager/jsp/listProduct",*/
            $('.layui-laypage-btn').click()
         )
            var index=parent.layer.getFrameIndex(window.name);
            parent.layer.close(index);
    });
    //监听编辑产品事件
    form.on('submit(edit)', function (data) {
        var product=data.field
        $.ajax({
             url:'../../pcshop/manager/editProduct',
            type:"post",
            data:data.field,
            success:function(data){
                if(data>0){
                    $('.layui-laypage-btn').click();
                    alert("修改成功")
                }else{
                    $('.layui-laypage-btn').click();
                    alert("修改失败")
                }
            }
     })
        var index=parent.layer.getFrameIndex(window.name);
        parent.layer.close(index);
        $('.layui-laypage-btn').click();
    });

    /*
     * @todo 弹出层，弹窗方法
     * layui.use 加载layui.define 定义的模块，当外部 js 或 onclick调用 use 内部函数时，需要在 use 中定义 window 函数供外部引用
     * http://blog.csdn.net/xcmonline/article/details/75647144
     */
    /*
     参数解释：
     title   标题
     url     请求的url
     id      需要操作的数据id
     w       弹出层宽度（缺省调默认值）
     h       弹出层高度（缺省调默认值）
     */
    window.WeAdminShow = function(title, url, w, h) {
        if(title == null || title == '') {
            title = false;
        };
        if(url == null || url == '') {
            url = "404.html";
        };
        if(w == null || w == '') {
            w = ($(window).width() * 0.9);
        };
        if(h == null || h == '') {
            h = ($(window).height() - 50);
        };
        layer.open({
            type: 2,
            offset: 'auto',
            area: [w + 'px', h + 'px'],
            fix: false, //不固定
            maxmin: true,
            shadeClose: true,
            shade: 0.4,
            title: title,
            content: url,
            resize:true,
            end:function(){             //当弹出层页面关闭后自动刷新当前页面
                layui.table.reload('test-table-operate')
            }
        });
    }
    /*弹出层+传递ID参数*/
    window.WeAdminEdit = function(title, url, id, w, h) {
        if(title == null || title == '') {
            title = false;
        };
        if(url == null || url == '') {
            url = "404.html";
        };
        if(w == null || w == '') {
            w = ($(window).width() * 0.9);
        };
        if(h == null || h == '') {
            h = ($(window).height() - 50);
        };
        layer.open({
            type: 2,
            area: [w + 'px', h + 'px'],
            fix: false, //不固定
            maxmin: true,
            shadeClose: true,
            shade: 0.4,
            title: title,
            content: url,
            success: function(layero, index) {

            },
            error: function(layero, index) {
            },
            end:function(){             //当弹出层页面关闭后自动刷新当前页面
                layui.table.reload('test-table-operate')
            }
        });
    }

});