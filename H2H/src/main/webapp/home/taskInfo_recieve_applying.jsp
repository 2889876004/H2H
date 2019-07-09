<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>taskInfo</title>
	<link rel="stylesheet" href='../backSettings/css/style1.css'>
	<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,300italic" rel="stylesheet" type="text/css" />
		<script src="../backSettings/js2/jquery.min.js"></script>
		<script src="../backSettings/js2/jquery.poptrox-2.2.js"></script>
		<script src="../backSettings/js2/skel.min.js"></script>
		<script src="../backSettings/js2/init.js"></script>
        <link rel="stylesheet" href="../backSettings/css2/skel-noscript.css" />
	 	<link rel="stylesheet" href="../backSettings/css2/style-ht.css" />
        <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" type="text/css" href="../backSettings/css2/datedropper.css">
		<link rel="stylesheet" type="text/css" href="../backSettings/css2/timedropper.min.css">
		
		<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	
	<link rel="stylesheet" href="../backSettings/css2/reset.css"/>
    <link rel="stylesheet" href="../backSettings/css2/public.css"/>
    <link rel="stylesheet" href="../backSettings/css2/index.css"/>
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<style type="text/css">
		.myp1{
			color: #000000;
			line-height: 10px;
			font-size: 25px;
			position: relative;
			top: 20px;
		}
		
		.myp2{
			color: #000000;
			line-height: 5px;
			font-size: 18px;
			position: relative;
			left: 10px;
			top: 40px;
		}
		
		.myspan{
			color: #000000;
			font-size: 20px;
		}
		
		.mylabel{
			font-size: 20px;
			font-weight: 500;
		}
		
		.mytextarea{
			font-size: 18px;
			width: 1020px; 
			height: 100px; 
			max-height: 50px;
			position: relative; 
			left: 80px; 
			outline-color: rgba(107,154,217,0.40); 
			outline-style: solid; 
			outline-width: 2px; 
			resize: none;
			overflow-y:auto;
		}
	</style>
</head>

<body>
	<div class="night" style="max-width: 100px;  z-index: -1;position: relative; left: 1600px;  top: 250px;">
  		<div class="shooting_star"></div>
  		<div class="shooting_star"></div>
  		<div class="shooting_star"></div>
  		<div class="shooting_star"></div>
  		<div class="shooting_star"></div>
  		<div class="shooting_star"></div>
  		<div class="shooting_star"></div>
  		<div class="shooting_star"></div>
		<div class="shooting_star"></div>
	</div>
	<div class="night" style="max-width: 100px;  z-index: -1;position: relative; left: 50px;  top: 250px;">
  		<div class="shooting_star"></div>
  		<div class="shooting_star"></div>
  		<div class="shooting_star"></div>
  		<div class="shooting_star"></div>
  		<div class="shooting_star"></div>
  		<div class="shooting_star"></div>
  		<div class="shooting_star"></div>
  		<div class="shooting_star"></div>
		<div class="shooting_star"></div>
	</div>

	<script>
		$("#btn_add").click(function () {
3      $("#myModalLabel").text("新增");
4    $('#myModal').modal();
5 });
		</script>
	<div class="indexMain" style = "width:55%;">
		<div class="indexMain_left_btn" style="height: 80px;">
			<div class = "row">
			<div class = "col-md-8">
			<h1 style="position: relative; left: 30px; top:2%;">任务标题：${task.title}</h1>
				<br>
				</div>
				
			<div class = "col-md-4">
			<div style="width: 50%; position: relative; left: 40%; bottom: 50%;">
				<a class="btn btn-danger " data-toggle="modal" data-target="#myModal" style="width: 100%;"><em>取消申请</em></a>
				<a href="/home" class="btn btn-primary"  style="width: 100%;"><em>返回</em></a>
			</div>
			</div>
			</div>
		</div>
		<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style = "position: relative; top:30%;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">确认取消申请提示</h4>
            </div>
            <div class="modal-body">是否确认取消申请接受该任务？</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">返回</button>
                <button type="button" class="btn btn-primary" onclick = "location.href='/home/cancelApply?taskID=${task.taskID}'">确认取消接受</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
		
		<div class="indexMain_left_con" style="height: 140px;">
        	<p class="myp1">任务描述</p>
        	<p class="myp2">${task.description}</p>
    	</div>
		<div class="indexMain_left_con" style="height: 150px;">
        	<p class="myp1">任务信息</p>
			<div>
        		<span class="glyphicon glyphicon-user" style="color: rgb(0, 152, 193); font-size: 25px; position: relative; left: 30px; top: 50px;"></span>
				<a href="#" style="position: relative; left: 40px; top: 46px;"><span class="myspan">发布人</span></a>
			</div>
				<div>
				<span class="glyphicon glyphicon-usd" style="color: rgb(255, 235, 118); font-size: 25px; position: relative; left: 200px; top: 18px;"></span>
				<label class="mylabel" style="position: relative; left: 210px; top: 14px;">悬赏: ${task.rewardPoints}</label>
				<span class="glyphicon glyphicon-cog" style="color:gray; font-size: 25px; position: relative; left: 290px; top: 18px;"></span>
				<label class="mylabel" style="position: relative; left: 300px; top: 14px;">类型: ${task.type}</label>
								<br>

				<span class="glyphicon glyphicon-time" style="color:black; font-size: 25px; position: relative;left: 40px; top: 46px;x; top: 18px;"></span>
				<label class="mylabel" style="position: relative; left: 40px; top: 46px;; top: 14px;">发布时间: ${task.startTime}</label>
				<span  class="glyphicon glyphicon-time"style="color:black; font-size: 25px; position: relative;  left: 210px; top: 46px;top: 18px;"></span>
				<label class="mylabel" style="position: relative;  left: 210px;top: 46px; x; top: 14px;">截止时间: ${task.deadLine}</label>
			</div>
    	</div>
				<div class="indexMain_left_con" style="height: 350px;">
        	<p class="myp1">评论</p>
					<br>
			<div style="position: relative; top: 30px; ">
        		<form action="/home/commit?taskId=${task.taskID}" method="post">
                	<textarea name="comment.content" id="" class="mytextarea" placeholder="留下你的见解" style="width:90%;position: relative; top: 15%; left: 5%"></textarea>
					<input type="submit" class="btn btn-primary" style="width:20%; font-size: 15px; position: relative; left: 75%; top: 20px;" value="提 交"/>
									<br>
          		</form>
			</div>
		</div>
		<c:forEach items="${comments}" var="comment" varStatus="Co">
			<div class="indexMain_left_con">
            <!--有主题图循环结束-->
            <!--无主题图循环开始-->
            	<div class="indexCon_msg">
                
                	<div class="indexCon_msg_detail">
						<a href="../otherPeople.jsp">
						 <div class="indexCon_msg_detail_tittle">
                            <p style="font-size: 17px;"><span class="glyphicon glyphicon-user" style="color: rgb(0, 152, 193);"></span>评论人： ${comment.commentatorNum}</p>
                        </div>
						</a>
                    	<a data-toggle="collapse" data-parent="#accordion" 
						href="#${comment.commentID}" href="">
                       		<p style="font-size: 17px;">显示详情</p>
                    	</a>
						<div id="${comment.commentID}" class="panel-collapse collapse">
							<div class="panel-body">
								<p style="font-size: 17px;">${comment.content}</p>
							</div>
						</div>
                    <div>
                        <ul class="list-inline">

							<li></li><li></li>
                            <li><h5><span class="glyphicon glyphicon-time" style="color: rgb(0, 152, 193);"></span> 发布时间 ： ${comment.time}</h5></li>
							<li></li>
							<li></li><li></li>
                        </ul>
                    </div>
                	</div>
                <div class="clear"></div>
            	</div>
        	</div>
		</c:forEach>
		<br>
		<br>
		<br>
	</div>
</body>
</html>

