<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.indihx.comm.util.DateUtil"%>
<%@ include file="/jsp/comm/mate.jsp"%>
<html>
<head>
    <style type="text/css">
        #div_main {
            margin: 0 auto;
            width: 300px;
            height: 400px;
            border: 1px solid black;
            margin-top: 50px;
        }
 
        #div_txt {
            position: relative;
            width: 200px;
            margin: 0 auto;
            margin-top: 40px;
        }
 
        #txt1 {
            width: 99%;
        }
 
        #div_items {
           	position: relative;
            width: 100%;
            height: 200px;
            border: 1px solid #66afe9;
            border-top: 0px;
            overflow: auto;
            display: none;
        }
 
        .div_item {
            width: 100%;
            height: 20px;
            margin-top: 1px;
            font-size: 13px;
            line-height: 20px;
        }
    </style>	
    <script src="${ctx }/resources/js/jquery.min.js"></script>
    <script type="text/javascript">
    
    function test(){
    	//alert("world");
    	$("#div_items").css('display', 'block');
    }
 	
    $(document).ready(function(){
    
    //弹出列表框
    $("#txt1").click(function () {
    	//alert("hello");
        $("#div_items").css('display', 'block');
        return false;
    });
 
    //隐藏列表框
    $("body").click(function () {
        $("#div_items").css('display', 'none');
    });
 
    //移入移出效果
    $(".div_item").hover(function () {
        $(this).css('background-color', '#1C86EE').css('color', 'white');
    }, function () {
        $(this).css('background-color', 'white').css('color', 'black');
    });
    
    //文本框输入
    $("#txt1").keyup(function () {
        $("#div_items").css('display', 'block');//只要输入就显示列表框
 
        if ($("#txt1").val().length <= 0) {
            $(".div_item").css('display', 'block');//如果什么都没填，跳出，保持全部显示状态
            return;
        }
 
        $(".div_item").css('display', 'none');//如果填了，先将所有的选项隐藏
 
        for (var i = 0; i < $(".div_item").length; i++) {
            //模糊匹配，将所有匹配项显示
            if ($(".div_item").eq(i).text().substr(0, $("#txt1").val().length) == $("#txt1").val()) {
                $(".div_item").eq(i).css('display', 'block');
            }
        }
    });
 
    //项点击
    $(".div_item").click(function () {
        $("#txt1").val($(this).text());
    });
    }); 
    </script>
</head>
<body>
<div id="div_main">
    <!--表单的autocomplete="off"属性设置可以阻止浏览器默认的提示框-->
    <p>hello</p>
    <form autocomplete="off">
        <div id="div_txt">
            <!--要模糊匹配的文本框-->
            <input type="text" id="txt1"/>

            <!--模糊匹配窗口-->
            <div id="div_items">
                <div class="div_item">周杰伦</div>
                <div class="div_item">周杰</div>
                <div class="div_item">林俊杰</div>
                <div class="div_item">林宥嘉</div>
                <div class="div_item">林妙可</div>
                <div class="div_item">唐嫣</div>
                <div class="div_item">唐家三少</div>
                <div class="div_item">唐朝盛世</div>
                <div class="div_item">奥迪A4L</div>
                <div class="div_item">奥迪A6L</div>
                <div class="div_item">奥迪A8L</div>
                <div class="div_item">奥迪R8</div>
                <div class="div_item">宝马GT</div>
            </div>
        </div>
        </form>
        </div>
</body>
</html>