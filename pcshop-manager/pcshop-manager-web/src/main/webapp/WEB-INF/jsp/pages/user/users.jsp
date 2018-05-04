<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="keywords" content=""/>
  <meta name="description" content=""/>
  <title>EarlyBird后台管理平台</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/layui/css/layui.css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/admin.css"/>
  <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.8.3.js"></script>
</head>
<body>
<div class="container">
  <div class="content-search">
    <form class="layui-form layui-form-pane usersearch" onsubmit="return false;" >
      <div class="layui-inline">
        <label class="layui-form-label">会员ID</label>
        <div class="layui-input-block">
          <input name="uid" id="uid" placeholder="请输入会员ID" autocomplete="off" class="layui-input" type="text"/>
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label">会员姓名</label>
        <div class="layui-input-block">
          <input name="uname" id="uname" placeholder="请输入会员姓名" autocomplete="off" class="layui-input" type="text"/>
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label">手机号码</label>
        <div class="layui-input-block">
          <input name="tellphone" id="tellphone" placeholder="请输入手机号码" autocomplete="off" class="layui-input" type="text"/>
        </div>
      </div>
      <div class="layui-inline">
        <label class="layui-form-label">用户状态</label>
        <div class="layui-input-inline">
          <select name="pflag" id="pflag" lay-verify="">
            <option value="">请选择</option>
            <option value="1">正常</option>
            <option value="0">冻结</option>
          </select>
        </div>
      </div>
      <div class="layui-inline" style="margin-rigth: 10px">
        <button class="layui-btn" lay-filter="search" data-type="reload" id="sub">查询</button>
      </div>
    </form>
  </div>

  <div class="table-list layui-form roll-x">
    <div class="weadmin-block demoTable" >
      <button class="layui-btn layui-btn-danger" data-type="getCheckData"><i class="layui-icon">&#xe640;</i>批量删除</button>
      <button class="layui-btn" onclick="UserAdd('添加用户','../../pages/user/useradd',800,500)"><i class="layui-icon">&#xe61f;</i>添加</button>
    </div>

    <table class="layui-table" id="test-table-operate" lay-filter="myTable" lay-skin="line">

    </table>

    <script type="text/html" id="operateTpl">
      <button onclick="UserEdit('编辑用户','../../pages/user/useredit?uid={{d.uid}}','{{d.uid}}',800,500)" id="updateUser" value="{{d.uid}}" class="layui-btn layui-btn-sm" data-type="updateUser">
        <i class="layui-icon">&#xe642;</i>编辑
      </button>

      <button class="layui-btn layui-btn-sm layui-btn-danger" id="removeUser" value="{{d.uid}}" onclick="removeUser(this)" data-type="removeUser">
        <i class="layui-icon">&#xe640;</i>删除
      </button>
    </script>
  </div>
  <script type="text/html" id="shelfPflag">
    <form class="layui-form">
      <input id="userpflag" value="{{d.uid}}" type="checkbox" name="userpflag" lay-filter="userpflag" lay-skin="switch" lay-text="正常|拉黑"
             {{1==d.pflag?'checked':''}}/>
    </form>
  </script>
  <script type="text/html" id="shelfVip">
    <form class="layui-form">
      <input id="uservip" value="{{d.uid}}" type="checkbox" name="uservip" lay-filter="uservip" lay-skin="switch" lay-text="会员|普通"
             {{1==d.vip?'checked':''}}/>
    </form>
  </script>
</div>
<div id="table-pages" style="text-align:center"></div>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js"></script>
<script type="text/javascript">
  layui.use(['jquery','table','form','layer'], function(){
    var $ = layui.jquery,
            table = layui.table,
            form = layui.form,
            layer = layui.layer;
    //debugger;
    table.render({
      elem: '#test-table-operate'
      ,url: '../../users'
      ,cols: [[
        {type:'checkbox'}
        ,{field:'uid', width:80, title: 'ID'}
        ,{field:'uname', width:80, title: '用户名'}
        ,{field:'sex', width:80, title: '性别'}
        ,{field:'age', width:80, title: '年龄'}
        ,{field:'birthday', width:120, title: '生日'}
        ,{field:'tellphone', width: 120, title: '电话'}
        ,{field:'money', width:100, title: '消费金额'}
        ,{field:'pflag', width:100, title: '账户状态',templet:'#shelfPflag'}
        ,{field:'vip', width:100, title: '会员等级',templet:'#shelfVip'}
        ,{field:'address', width:120, title: '收货地址'}
        ,{field:'registertime', width:120, title: '注册时间'}
        , {field: 'poperate', title: '操作管理', width: 220, templet: '#operateTpl'}
//        ,{toolbar: '#barUser'}
      ]]
      ,page: true
    });


    $(function(){
      $("#sub").click(function(){
//        debugger;
        var uid = $.trim($("#uid").val());
        var uname= $.trim($("#uname").val());
        var tellphone= $.trim($("#tellphone").val());
        var pflag= $.trim($("#pflag").val());
        table.reload("test-table-operate",{
          //从第一页开始显示
          page:{curr:1},
          //查询条件
          where:{uid:uid,uname:uname,tellphone:tellphone,pflag:pflag}
        });
      });
    });
    var active = {
      //模糊查询
      reload:function(){
        //获取表单的值
        debugger;
        var uid = $.trim($("#uid").val());
        var uname= $.trim($("#uname").val());
        var tellphone= $.trim($("#tellphone").val());
        var pflag= $.trim($("#pflag").val());
//        alert(111)
        if((uid!=null && uid.length>0)||
                (uname!=null && uname.length>0)||
                (tellphone!=null && tellphone.length>0)||
                (pflag!=null && pflag.length>0)){
          //如果搜索框有条件 那么就重载表格 并且把条件传到后台
          table.reload("demo",{
            //从第一页开始显示
            page:{curr:1},
            //查询条件
            where:{uid:uid,uname:uname,tellphone:tellphone,pflag:pflag}
          });
        }
      },

      //批量删除的功能
      getCheckData: function () {

        //先获取被选中的数据
        var status = table.checkStatus('test-table-operate');
        var data = status.data;

        if(data.length<0||data.length==0){

            //没有选中行
            layer.msg('请选择数据后再批量删除！', {icon: 5})

        }else{
          layer.confirm('您确定要删除所选数据吗？', {
            btn: ['确定','取消'] //按钮
          }, function() {

            //至少选中了一行
            //1 获得选中行的ID形成数组
            var ids = [];
            for (var i = 0; i < data.length; i++) {
              ids.push(data[i].uid);
              //alert(data[i].uid);
            }
            $.post(
                    //url:这次异步请求提交到后台给谁处理
                    '../../removeBatchUser',
                    //data:这次异步请求携带了什么数据给后台处理
                    {'ids[]': ids},
                    //success:这次异步请求处理成功的回调函数
                    function (data) {
                      if (data > 0) {
                        //删除后刷新数据 并且停留在原来页面
                        $('.layui-laypage-btn').click();
                        layer.msg("删除成功", {icon: 1})
                      } else {
                        layer.msg("删除失败", {icon: 5})
                      }
                    }
            );
            //3 成功后提醒客户完成操作

          })
        }
      }
    };

    //批量删除按钮的操作代码
    $('.demoTable .layui-btn').on('click', function () {
      var type = $(this).data('type');//getCheckData data-type="getCheckData"
      active[type] ? active[type].call(this) : '';
    });
    //模糊查询
    $('.userSearch .layui-inline .layui-btn').on('click', function () {
      debugger;
      var type = $(this).data('type');//reload data-type="reload"
      alert(1111);
      active[type] ? active[type].call(this) : '';
    });

    //用户账户状态的开关事件
    form.on('switch(userpflag)',function(data){
      //修改用户账号状态，正常或者拉黑 即修改pflag为或1
      var uid = data.elem.value;
      //alert("uid===" + uid);
      $.post(
            '../../userpflag',
            {"uid":uid},
            function(data){
              if(data>0){
                layer.msg("更改成功",{icon:1})
                //alert("success")
              }else{
                layer.msg("更改失败",{icon:2})
              }
            }
      );
    });

    //用户会员等级的开关事件
    form.on('switch(uservip)',function(data){
      //修改用户账号状态，正常或者拉黑 即修改pflag为或1
      var uid = data.elem.value;
      //alert("uid===" + uid);
      $.post(
              '../../uservip',
              {"uid":uid},
              function(data){
                if(data>0){
                  layer.msg("更改成功",{icon:1});
                  //alert("success")
                }else{
                  layer.msg("更改失败",{icon:2});
                }
              }
      );
    });

    /*弹出层+传递ID参数*/
    window.UserEdit = function(title, url, id, w, h) {
      /*$.post(
              "../../toEdit",
              {"uid":id}
      )*/
      if(title == null || title == '') {
        title = false;
      };
      if(url == null || url == '') {
        url = "../../pages/404";
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
                alert("errors");
            },
            end:function(){             //当弹出层页面关闭后自动刷新当前页面
              layui.table.reload('test-table-operate')
            }
      });
    },

    window.UserAdd = function(title, url, w, h) {
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
            end:function(){
                layui.table.reload('test-table-operate')
            }
        });
    }

    //编辑
    /*table.on('tool(myTable)',function(obj){
      var uid=obj.data.uid;
      var uname=obj.data.uname;
      var sex=obj.data.sex;
      var age=obj.data.age;
      var birthday=obj.data.birthday;
      var vip = obj.data.vip;
      var money = obj.data.money;
      var tellphone=obj.data.tellphone;
      var pflag = obj.data.pflag;
      var address = obj.data.address;
      var registertime = obj.data.registertime;

      alert(uid);
      /!*$("#uid1").val(uid);
      $("#uname1").val(uname);
      $("#sex1").val(sex);
      $("#age1").val(age);
      $("#birthday1").val(birthday);
      $("#vip1").val(vip);
      $("#money1").val(money);
      $("#tellphone1").val(tellphone);
      $("#pflag1").val(pflag);
      $("#address1").val(address);
      $("#registertime1").val(registertime);*!/

      /!*if(pflag=="普通人员"){
        //alert(1);
        $('input:radio[name=level]')[0].checked = true;
        form.render('radio');
      }
      else{
        //alert(2);
        $('input:radio[name=level]')[1].checked = true;
        form.render('radio');
      }
      if(status==1)
      {
        $("input:radio[name=status]")[0].checked=true;
      }
      else
      {
        $("input:radio[name=status]")[1].checked=true;
      }*!/
      layer.open({
        type: 1,
        skin: 'layui-layer-rim', //加上边框
        area: ['350px', '360px'], //宽高

        content: 'http://baidu.com'  //调到新增页面
      });
    });*/


  });

  //删除用户
  function removeUser(obj){
    layer.confirm('您确定要删除这条数据吗？', {
      btn: ['确定','取消'] //按钮
    }, function()
    {
      var uid = obj.value;
  //    alert(uid)
      $.ajax({
        url:"${pageContext.request.contextPath}/removeUser",
        data:{"uid":uid},
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

</script>
</body>
</html>
