/**
 ** 检查鼠标事件
 ** 功能：用于鼠标事件冲突的两个元素
 ** by wangsheng
 **/
function CheckMouseEvent(){
	/**
	 ** 检查触发鼠标事件的对象
	 ** 功能：检查当前触发鼠标事件的元素，与鼠标监听对象的关系
	 **
	 ** 参数：
	 ** mouseEvent 	当前鼠标事件
	 ** now_mc		添加此事件的元素
	 **
	 ** 返回值： Bollon  true 同一元素/上下级关系；false 两者没有关系
	 **/
	this.checkMouseEventElement = function(mouseEvent,new_event_mc){
		//出发事件的对象
		var eventMc;

		//得到当前事件
		mouseEvent = mouseEvent || window.event;

		//得到当前触发鼠标事件的对象
		if(mouseEvent.type == "mouseover"){
			eventMc = mouseEvent.formElement || mouseEvent.relatedTarget;
		}
		else if(mouseEvent.type == "mouseout"){
			eventMc = mouseEvent.toElement || mouseEvent.relatedTarget;
		}else if(mouseEvent.type == "mouseenter"){
            	eventMc = mouseEvent.toElement || mouseEvent.relatedTarget;
        }

		//检查元素之间的关系
		//判断当前浏览器是否为IE，如果document.all存在，则为IE；否则是其他浏览器
		if(document.all){
			//判断添加此鼠标事件监听的元素(new_event_mc)，是否与当前触发鼠标事件的元素(eventMc)，存在包含关系。
			return new_event_mc.contains(eventMc);
		}
		else{
			/**
			 ** a.compareDocumentPosition(b)有五个值：
			 ** 若为零，表示相同节点；
			 ** 若为2 ，表示a位于b后面；
			 ** 若为4 ，表示a位于b前面；
			 ** 若为10，表示a为b的后代；
			 ** 若为20，表示a为b的祖级。
			 ** 注：返回值为零和20，表示有包含关系，其他值为没有包含关系。
			 **/
			var reg = new_event_mc.compareDocumentPosition(eventMc);
			if(reg == 0 || reg == 20) return true;
		}

		return false;
	}
}

//检查数据是否存在
function checkdataFun(data){
	if(data != null && data != "null" && data != undefined && data != "undefined" && data != "" && data != " "){
	  return true;
	} 
	return false;
}
/**
 ** 服务说明:处理URL地址
 ** 参数：
 ** url		
 ** reutrn 站内地址/站外地址
 **/
function createUrl(url){
    if(typeof url != "undefined" && url.length > 0){
		if(url.indexOf("http") >= 0){
			return url;
		}else{
          return url.indexOf("/") == 0 ? ("http://" + window.location.host + url ) : ("http://" + window.location.host + "/" +url);
		}
    }
	return url;
}

/**
 ** 改变豆腐块数据
 ** 参数：
 ** data		本楼层需要显示的数据
 ** list_id		本楼层广告位元素列表ID
 ** imgPath		图片服务器路径
 **/
function ChangeDouFuKuaiDataFun(data,list_id,imgPath){
    if(!checkdataFun(data)) return;
    
    var list_mc = $(list_id).find("a"),data_name,data_imgUrl,data_href;
    for(var i = 0; i < list_mc.length; i++){
        if(checkdataFun(data[i])){
            //得到商品名称数据
            data_name = data[i].AD_SOURCE_TITLE;
            data_name = checkdataFun(data_name)?data_name:"";
          
            //得到商品图片数据
            data_imgUrl = checkdataFun(data_imgUrl)?data_imgUrl:"";
            data_imgUrl = imgPath + "/" + data[i].AD_SOURCE_IMGPATH;
            
            //得到跳转链接数据
            data_href = createUrl(data[i].AD_SOURCE_URL)+"?ref=mkt_hp_act_banner_"+i;
            data_href = checkdataFun(data_href)?data_href:"";
        }
        else{
            data_imgUrl = data_href = data_name = "";
        }
      
        //链接地址
        $(list_mc[i]).attr({"href":data_href});
      
        //商品图片
        var product_img = $(list_mc[i]).find(".jd_dfk_img");
        if(checkdataFun(product_img) && checkdataFun($(product_img).find("img"))) $(product_img).find("img").attr({"alt":data_name,"src":data_imgUrl,"data-url":data_imgUrl});
    }
}

/**
 ** 改变每日活动轮播数据
 **/
function ChangeActivityLunboDataFun(data,img_list_id,imgPath){
    if(!checkdataFun(data)) return;

    var data_name,data_imgUrl,data_href,data_slogan;
  
    //得到轮播图片
    var img_list = $(img_list_id).find("a");
    for(var i = 0; i<img_list.length; i++){
        if(checkdataFun(img_list[i])){
           if(checkdataFun(data[i])){
                //得到商品名称数据
                data_name = data[i].AD_SOURCE_TITLE;
                data_name = checkdataFun(data_name)?data_name:"";
              
                //得到商品图片数据
                data_imgUrl = checkdataFun(data_imgUrl)?data_imgUrl:"";
                data_imgUrl = imgPath + "/" + data[i].AD_SOURCE_IMGPATH;
              
                //得到跳转链接数据
                data_href = createUrl(data[i].AD_SOURCE_URL);
                data_href = checkdataFun(data_href)?data_href:"";
             
             	//得到商品slogan数据
                data_slogan= data[i].AD_SOURCE_DESCRIPTION;
                data_slogan = checkdataFun(data_slogan)?data_slogan:"";
            }
            else{
                data_name = data_imgUrl = data_href = "";
            }
            //链接地址
            $(img_list[i]).attr({"href":data_href});
          
            //商品名称
            var product_name = $(img_list[i]).find(".jd_activity_name");
            if(checkdataFun(product_name) && checkdataFun($(product_name).find("span"))) $(product_name).find("span").html(data_slogan + " " + data_name);
          
            //商品图片
            var product_img = $(img_list[i]).find(".jd_activity_img");
          	if(checkdataFun(product_img) && checkdataFun($(product_img).find("img"))) $(product_img).find("img").attr({"alt":data_name,"src":data_imgUrl});
        }
    }
}


/**
 ** 改变视频产品数据
 ** 参数：
 ** data		本楼层需要显示的数据
 ** list_id		本楼层广告位元素列表ID
 ** img_id		本楼层图片ID
 ** imgPath		图片服务器路径
 **/
function ChangeMovieDataFun(data,list_id,img_id,imgPath){
    if(!checkdataFun(data) || !checkdataFun(list_id)) return;

    var movie_list = $(list_id),data_imgUrl,data_href,data_name,data_slogan,data_moveId;
    if(checkdataFun(movie_list) && movie_list.length > 0){
      movie_list.each(function(num){
          if(num < data.length){
              //得到数据
              if(checkdataFun(data[num])){
                  //得到视频名称数据
                  data_name = data[num].AD_SOURCE_TITLE;
                  data_name = checkdataFun(data_name)?data_name:"";
                
                  //得到视频图片数据
                  data_imgUrl = checkdataFun(data_imgUrl)?data_imgUrl:"";
                  data_imgUrl = imgPath + "/" + data[num].AD_SOURCE_IMGPATH;
                  
                  //得到跳转链接数据
                  data_href = data[num].AD_SOURCE_URL; //不是url 面是一个ID字符串
                  data_href = checkdataFun(data_href)?data_href:"";
                  //if(checkdataFun(data_href)) data_href = (data_href.indexOf("http://") != -1)?data_href:("http://" + data_href);
                
                  //得到视频slogan数据
                  data_slogan= data[num].AD_SOURCE_DESCRIPTION;
                  data_slogan = checkdataFun(data_slogan)?data_slogan:"";

                  //得到视频ID
                  data_moveId = data[num].AD_SOURCE_CONTENT;
                  data_moveId = checkdataFun(data_moveId)?data_moveId:"";
              }
              else{
                  data_imgUrl = data_href = data_name = data_moveId = "";
              }
            
              //得到图片路径
              $(this).find("img").attr({"alt":data_name,"data-url":data_imgUrl});
            
              //得到图片描述
              var str = "";
              if(checkdataFun(data_slogan)) str = data_slogan;
              else if(checkdataFun(data_name)) str = data_name;
              $(this).find(".js_movie_tips").find("span").html(str);
            
              //得到视频ID
              $(this).find("a").each(function(i){
                  if(i == 0){
                      if(num < 7){
                          $(this).attr({"href":data_href});
                      }else{
                          $(this).attr({"href":"javascript:void(0);","videoId":data_href});
                      }
                  }else if(i == 1){
                      $(this).attr({"href":"javascript:void(0);","videoId":data_moveId});
                  }
              });
          }
      });
    }
    
}

/**
 ** 改变产品数据
 ** 参数：
 ** data		本楼层需要显示的数据
 ** list_id		本楼层广告位元素列表ID
 ** storey_id	本楼层ID
 ** imgPath		图片服务器路径
 **/
function ChangeIndexElementDataFun(data,list_id,storey_id,imgPath,urlParameter){
    if(!checkdataFun(data)) return;
  
    //资源读取地址前缀
    var imgUrl = imgPath;
    
    var list_mc = $(list_id).find("a");
    for(var i = 0; i<list_mc.length; i++){
        if(checkdataFun(list_mc[i])){
            var data_name,data_slogan,data_imgUrl,data_price,data_href;
          	
            if(checkdataFun(data[i])){
                //得到商品名称数据
                data_name = data[i].AD_SOURCE_TITLE;
                data_name = checkdataFun(data_name)?data_name:"";
                //得到商品slogan数据
                data_slogan= data[i].AD_SOURCE_DESCRIPTION;
                data_slogan = checkdataFun(data_slogan)?data_slogan:"";
                //得到商品图片数据
                data_imgUrl = checkdataFun(data_imgUrl)?data_imgUrl:"";
                data_imgUrl = imgUrl + "/" + data[i].AD_SOURCE_IMGPATH;
                //得到商品价格数据
                data_price = data[i].AD_SOURCE_CONTENT;
                data_price = checkdataFun(data_price)?data_price:"";
                //得到跳转链接数据
              var urlStr=createUrl(data[i].AD_SOURCE_URL);
              
              if(urlStr.indexOf("?")>=0){
               
                data_href = urlStr+"&ref=hp_hp_"+ urlParameter +"_product_"+i;
              }else{
                data_href = urlStr+"?ref=hp_hp_"+ urlParameter +"_product_"+i;
              }
              data_href = checkdataFun(data_href)?data_href:"";
            }
            else{
                data_name = data_slogan = data_imgUrl = data_price = data_href = "";
            }
          
            //链接地址
            $(list_mc[i]).attr({"href":data_href});
          	if($(list_mc[i]).attr("img-url") != undefined) $(list_mc[i]).attr({"img-url":data_imgUrl});
          
            //商品名称
            var product_name = $(list_mc[i]).find(".js_product_name");
            if(checkdataFun(product_name) && checkdataFun($(product_name).find("span"))) $(product_name).find("span").html(data_name);
          
            //商品slogan
            var product_slogan = $(list_mc[i]).find(".js_product_slogan");
            if(checkdataFun(product_slogan) && checkdataFun($(product_slogan).find("span"))) $(product_slogan).find("span").html(data_slogan);
          
            //商品图片
            var product_img = $(list_mc[i]).find(".js_product_img");
            if(checkdataFun(product_img) && checkdataFun($(product_img).find("img"))) $(product_img).find("img").attr({"alt":data_name,"data-url":data_imgUrl});
          
            //商品价格
            var product_price = $(list_mc[i]).find(".js_product_price");
            if(checkdataFun(product_price) && checkdataFun($(product_price).find("span"))) $(product_price).find("span").html(data_price);
          
          	//商品时间
            var product_time = $(list_mc[i]).find(".js_product_time");
            if(checkdataFun(product_time) && checkdataFun($(product_time).find("span"))) $(product_time).find("span").html(data_price);
        }
    }
}

/**
 ** 改变头条数据
 ** 参数:
 ** data		本楼层需要显示的数据
 ** list_id		本楼层广告位元素列表ID
 **/
function ChangeTouTiaoDataFun(data,list_id){
    if(!checkdataFun(data)) return;
    
    var list_mc = $(list_id).find("a"),data_name,data_href;
    for(var i = 0; i < list_mc.length; i++){
        if(checkdataFun(data[i])){
            //得到商品名称数据
            data_name = data[i].AD_SOURCE_TITLE;
            data_name = checkdataFun(data_name)?data_name:"";
          
            //得到跳转链接数据
            data_href = createUrl(data[i].AD_SOURCE_URL);
            data_href = checkdataFun(data_href)?data_href:"";
        }
        else{
            data_name = data_href = "";
        }
      
        //链接地址
        $(list_mc[i]).attr({"href":data_href});
      
        //头条类型
        var product_type = $(list_mc[i]).find(".js_toutiao_type");
        if(checkdataFun(product_type)) $(product_type).html(data_name.split("_")[0]);
      
        //头条类型
        var product_name = $(list_mc[i]).find(".js_toutiao_text");
        if(checkdataFun(product_name)) $(product_name).html(data_name.split("_")[1]);
    }
}

/**
 ** =======================================================
 **
 ** 					特效代码 开始
 **
 ** =======================================================
 **/

//改变8楼体育直播图片的方法
function ChangeImageVirtue_8F_tyzb_Fun(list_num){
    var list_mc = $("#js_tyzb_list").find("a");
    var img_mc =  $("#js_tyzb_img").find("img");
    var img_url = $(list_mc[list_num]).attr("img_url");
    ChangeImageVirtueFun(img_mc,"src",img_url)
}

//改变10楼媒体动态图片的方法
function ChangeImageVirtue_10F_mtdt_Fun(list_num){
    var list_mc = $("#js_media_list").find("a");
    var img_mc =  $("#js_media_img").find("img");
    var img_url = $(list_mc[list_num]).attr("img_url");
    ChangeImageVirtueFun(img_mc,"src",img_url)
}

/**
 ** 改变元素属性的方法
 ** 参数：
 ** element_mc	  需要改变属性的元素
 ** virtue_name	  需要改变的属性名称
 ** value 		  对应的改变值
 **/
function ChangeImageVirtueFun(element_mc,virtue_name,value){
    $(element_mc).attr(virtue_name,value);
}

/**
 **	鼠标移入时 修改列表显示数据的样式
 ** 参数：
 ** f_num_num	元素楼层
 ** element_id	元素ID
 ** fun 		移入时的执行函数
 **/
function ListElementMouseOver_F_Fun(f_num_num,element_id,fun){
    var list_mc = $(f_num_num + " " + element_id).find("a");
    var checkmouse =  new CheckMouseEvent();
    var ismouse;
    list_mc.bind("mouseover",function(event){
        ismouse  = checkmouse.checkMouseEventElement(event,this);
        //如果不是从自己元素内移入，则改变元素样式
        if(!ismouse){
            for(var i = 0; i < list_mc.length; i++) {
                if(list_mc[i] == this){
                    if(!$(list_mc[i]).hasClass("cur")) $(list_mc[i]).addClass("cur");

                    if(checkdataFun(fun)) fun(i);
                }
                else{
                    if($(list_mc[i]).hasClass("cur")) $(list_mc[i]).removeClass("cur");
                }
            }
        }
    });
}

/**
 **	鼠标移入移出时 修改列表显示数据的样式
 ** 参数：
 ** f_num_num	元素楼层
 ** element_id	元素ID
 **/
function ListElementMouseOverOut_F_Fun(f_num_num,element_id){
    var list_mc = $(f_num_num + " " + element_id).find("a");
    var checkmouse =  new CheckMouseEvent();
    var ismouse;
    list_mc.bind({
        "mouseover":function(event){
            ismouse  = checkmouse.checkMouseEventElement(event,this);
            //如果不是从自己元素内移入，则改变元素样式
            if(!ismouse){
                for (var i = 0; i < list_mc.length; i++) {
                    if(list_mc[i] == this){
                        if(!$(list_mc[i]).hasClass("cur")) $(list_mc[i]).addClass("cur");
                        break;
                    }
                }
            }
        },
        "mouseout":function(event){
            ismouse  = checkmouse.checkMouseEventElement(event,this);
            //如果不是从自己元素内移入，则改变元素样式
            if(!ismouse){
                for (var i = 0; i < list_mc.length; i++) {
                    if(list_mc[i] == this){
                        if($(list_mc[i]).hasClass("cur")) $(list_mc[i]).removeClass("cur");
                        break;
                    }
                }
            }
        }
    });
}

/**
 ** 移动左侧导航
 ** 参数：
 ** element_mc	需要移动的Jquery元素
 ** stop_mc 	停止位置的原件(相对位置用)
 **/
function MoveLeftNavigationFun(element_mc,stop_mc){
  	if(!checkdataFun(element_mc)) return;
  	
  	//得到初始数据
	var _top = element_mc.position().top;
	var _left = element_mc.position().left;
	var _pos = element_mc.css("position");

  	//得到初始移动位置
  	var element_mc_marginTop = ($(window).height() - element_mc.height())/2;
  	var _start_move_location = element_mc.offset().top - element_mc_marginTop;
  

  	//计算左边距距离
	var _move_left = 0;
    function ChangeElementMcLeftFun(){
        if(checkdataFun(element_mc.parent())) {
            _move_left = $(element_mc.parent()).offset().left - Math.abs(_left);
            if(_move_left < 0) _move_left = -70;
          	return _move_left;
        }
      	return 0;
    }
  
  	ChangeElementMcLeftFun();
  
  	//改变尺寸时自动调整
    $(window).resize(function(){
        if(element_mc.css("position") == "fixed"){
            element_mc.css({"left":ChangeElementMcLeftFun()});
        }
    });
  
  	//滚轴事件监听
	$(window).scroll(function(){
		var scrollTop = $(this).scrollTop();
      
      	//得到停止位置
  		var _stop_move_location = 0;
      	if(checkdataFun(stop_mc)) _stop_move_location = stop_mc.offset().top - (stop_mc.height() - $(element_mc).height()) - element_mc_marginTop;
      	else _stop_move_location = $("body").height() - $(window).height();

		if(scrollTop >= _start_move_location && scrollTop < _stop_move_location && scrollTop + $(element_mc).outerHeight(true) < stop_mc.offset().top + stop_mc.height()){
			if(window.XMLHttpRequest){
				element_mc.css({
					"position":"fixed",
					"top":0,
					"left":_move_left,
					"margin-top":($(this).height() - element_mc.height())/2
				});
			}
			else{
				element_mc.css({
					"top":0,
					"left":_move_left,
					"margin-top":($(this).height() - element_mc.height())/2
				});
			}
		}
      	else if(scrollTop >= _stop_move_location){
          	/*var location = stop_mc.offset().top - $(element_mc.parent()).offset().top + 100;*/
          	var location = $(element_mc.parent()).height() - $(element_mc).height() - 36;
            element_mc.css({
                "position":_pos,
                "top": location,
                "left":_left,
                "margin-top": 0
            });
        }
		else{
			element_mc.css({"position":_pos,"top":_top,"left":_left,"margin-top":0});
		}
	});
}

/**
 ** 每日活动轮播效果的方法
 ** 参数：
 ** lunbo_img_id	图片元素ID
 **/
function ActivityLunboFun(lunbo_img_id){
	var lunbo_img = $(lunbo_img_id).find("a");

	if(checkdataFun(lunbo_img)){
      	var checkmouse =  new CheckMouseEvent();
      
      	//改变样式
        function ChangeStyle(mc){
          	lunbo_img.removeClass("cur");
            $(mc).addClass("cur");
        }
      	
      	//初始化当前是周几
      	var num = (new Date()).getDay();
        if(num > 1 && num <= 5){
            ChangeStyle($(lunbo_img[num-1]));
        }
        else{
          	ChangeStyle($(lunbo_img[0]));
        }
      
        lunbo_img.live({
          	"mouseenter":function(event){
                var ismouse  = checkmouse.checkMouseEventElement(event,this);
                if(!ismouse){
                    //改变按钮状态
                   ChangeStyle($(this));
                  
                    /*
                    //得到当前点击按钮的编号
                    var num = 0;
                    for(var i=0; i<lunbo_img.length; i++){
                        if(this == lunbo_img[i]){
                            num = i;
                            break;
                        }
                    }
        
                    //得到单个图片的移动距离
                    var lunbo_img_list = lunbo_img.find("li"),move_W = 0;
                    if(checkdataFun(lunbo_img_list)) move_W = lunbo_img.width() / lunbo_img_list.length;
                    move_W = checkdataFun(move_W)? move_W : 0;
                    move_W = -num * move_W;
                  
                    //移动轮播图片
                    $(lunbo_img).stop(true,false).animate({marginLeft:move_W},1000,"swing");
                    */
                }
            },
          	"mouseleave":function(event){
            	ChangeStyle($(lunbo_img[num-1]));
          	}
        });
	}
}

/**
 ** =======================================================================
 **
 **								评论晒单动效
 **
 ** =======================================================================
 **/
function floatSdList(){
    setTimeout(function(){
        var sdList = $("#sdList");
        var firstNode = sdList.find("li:first");

        sdList.append(firstNode.clone());
        sdList.animate({"top" : "-105px"}, 1000, function(){
            firstNode.remove();
            sdList.css("top", "0px");
            floatSdList();
        })
    }, 1500);
}

/**
 ** =======================================================================
 **
 **								 弹出拉幕
 **
 ** =======================================================================
 **/
//展示弹窗拉幕
function top_show(){
    if($(".top_fadeIn_big").length>0){
        $(".top_fadeIn_big").slideDown("slow");
        $(".top_fadeIn_big").find(".close").click(top_hidden);
        $(".top_fadeIn_small").find(".close").click(function(){
            $(".top_fadeIn_small").slideUp("slow");
        });
        setTimeout(top_hidden,"5000");
    }
}

//隐藏弹窗拉幕
function top_hidden(){
    $(".top_fadeIn_big").slideUp("slow",function(){
        if($(".top_fadeIn_small").length>0){
            // $(".top_fadeIn_small").slideDown("slow");
        }
    });
}