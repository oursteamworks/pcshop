/**
 * 为了兼容zxlib以前版本的代码，所以页面加载时就需要引用，后面所有组都要慢慢清理这个类下的调用
 */
$(function() {
    function playVideo(a) {
		pop("<div class='video_tc clear'><div class='close right'><a href='javascript:void(0)' id='wjPop-close'>关闭</a></div><div id='video__box' style='width:810px;height:456px'></div></div>");
		playerVideo(a);
		$('.close').on('click',function(){
            $('#video__box').remove();
        })
    }
    
    /**
        所有产品站在使用videoId
     */
    $("*[videoId]").on("click", function() {
        var vid = $(this).attr("videoId");
        playVideo(vid)
    });
    $("*[video-info]").on("click", function() {
        var data = $(this).attr("video-info") ? eval("(" + $(this).attr("video-info") + ")") : "";
        var vid = data.vid;
        playVideo(vid)
    });
	function playerVideo(vid){
       var player = new LETV_PLAYER.Player({
          containerId: 'video__box',
          vid: vid,
          rate: 2,
		  isHttps:1,
          event: {
          onChangeFullscreen : function(){ return 'normal'; },
          onPlayerVideoComplete: function(){return {status : 'pageContinue'}},
          onPlayerInit : function(data){ },
          },
          interface: {
             openLoginDialog : function(){
             }
          }
      }, "U2FsdGVkX193M312fvYbOiWsgKxbDlUCX1+Y4ZS1CXeh8lDmOjD11mpnHdEoC+MK");
    }
});