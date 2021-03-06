<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="bbq" uri="http://zhiyou100.com/common/" %>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>主讲人列表</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery-confirm.min.css"/>
    <script src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"/></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"/></script>
    <script src="${pageContext.request.contextPath}/js/jquery-confirm.js"></script>
    <script type="text/javascript">
    function deleteInfo(id){
		 $.confirm({
			    title: '提示',
			    content: '是否删除',
			    buttons: {
			        confirm: {
			        	text: '确定',
			        	action: function () {
			           		$.ajax({
			           			url:"${pageContext.request.contextPath}/speaker/delete/delete.action",
			           			dataType:"text",
			           			type:"post",
			           			data:{"id":id},
			           			success:function(msg){
			           				if(msg=="success"){
			           					location.reload();
			           				}
			           			}
			           		});
			        	}
			        },
			                 取消: function () {
			           
			        }
			       
			    }
			});
	 }  
  
    </script>
  </head>
  <body>
  	    <nav class="navbar navbar-inverse navbar-fixed-top">
	      <div class="container">
	        <div class="navbar-header">
	          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
	            <span class="sr-only">Toggle navigation</span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	          </button>
	          <a class="navbar-brand" href="#">视频管理系统</a>
	        </div>
	        <div id="navbar" class="navbar-collapse collapse">
	          <ul class="nav navbar-nav">
	            <li><a href="${pageContext.request.contextPath}/video/videoList.action">视频管理</a></li>
	            <li  class="active"><a href="#about">主讲人管理</a></li>
	            <li><a href="${pageContext.request.contextPath}/course/courseList.action">课程管理</a></li>
				<li><a href="${pageContext.request.contextPath}/statistics.action">统计分析</a></li>
	          </ul>
	        
		       <div id="navbar" class="navbar-brand navbar-right" >
		           <a href="#">${admin.loginName}</a><a href="${pageContext.request.contextPath}/admin/loginout.action" class="glyphicon glyphicon-log-out"></a>
		        </div>
	        
	        </div>
	      </div>
	    </nav>
	    <div class="container theme-showcase" role="main">
	    	
		    <div class="jumbotron">
		        <h3>主讲人列表-主讲人管理</h3>
		    </div>
		    
		    <a href="${pageContext.request.contextPath}/speaker/speakerAdd.action"><button type="button" class="btn btn-primary">添加主讲人</button></a>
		    <div style="float: right;">
	          <form class="navbar-form navbar-right" action="${pageContext.request.contextPath}/speaker/speakerList.action" method="get">
	            名称:<input class="form-control" type="text"  name="name" placeholder="主讲人姓名" value="${name}">
	         职位: <input class="form-control" type="text" name="job" placeholder="主讲人职业" value="${job}">
	            <button type="submit" class="btn btn-primary">查询</button>
	          </form>
        	</div>
		    
			
			<div class="bs-example" data-example-id="hoverable-table">
			    <table class="table table-hover">
			      <thead>
			        <tr>
			          <th class="col-md-0">序号</th>
			          <th class="col-md-1">名称</th>
			          <th class="col-md-1">职位</th>
			          <th class="col-md-10">简介</th>
			          <th class="col-md-0">编辑</th>
			          <th class="col-md-0">删除</th>
			        </tr>
			      </thead>
			      <tbody>
			        
			       <c:forEach var="speaker" items="${page.rows}" varStatus="status">
			        <tr>
			          <td>${status.count }</td>
			          <td>${speaker.speakerName}</td>
			          <td>${speaker.speakerJob}</td>
			          <td>${speaker.speakerDescr}</td>
			          <td><a href="${pageContext.request.contextPath}/speaker/${speaker.id}.action" class="glyphicon glyphicon-edit"></a></td>
			          <%-- <td><a href="${pageContext.request.contextPath}/speaker/delete/${speaker.id}.action" class="glyphicon glyphicon-trash twitter"></a></td> --%>
			          <td><a class="twitter glyphicon glyphicon-trash" data-title="提示" onclick="deleteInfo(${speaker.id})"></a></td>
			        </tr>
			          </c:forEach>
			      </tbody>
			    </table>
			</div>
		<bbq:page url="${pageContext.request.contextPath}/speaker/speakerList.action"></bbq:page>
			
		</div>
  </body>
</html>