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
    <title>课程列表</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
    <script src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"/></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"/></script>
    
 	<script type="text/javascript">
 	
    function shouconfirm(){
    	var r = confirm("你确认要删除吗?");
    	return r;
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
	            <li><a href="${pageContext.request.contextPath}/speaker/speakerList.action">主讲人管理</a></li>
	            <li class="active"><a href="#">课程管理</a></li>
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
		        <h3>课程列表-课程管理</h3>
		    </div>
		    
		    <a href="${pageContext.request.contextPath}/course/course.action"><button type="button" class="btn btn-primary">添加课程</button></a>
			
			<div class="bs-example" data-example-id="hoverable-table">
			    <table class="table table-hover">
			      <thead>
			        <tr>
			          <th class="col-md-1">序号</th>
			          <th class="col-md-1">标题</th>
			          <th class="col-md-1">学科</th>
			          <th class="col-md-9">简介</th>
			          <th class="col-md-0">编辑</th>
			          <th class="col-md-0">删除</th>
			        </tr>
			      </thead>
			      <tbody>
			        
			         <c:forEach var="course" items="${page.rows}" varStatus="status">
			        <tr>
			          <td>${status.count }</td>
			          <td>${course.courseName}</td>
			          <td>${course.subjectName}</td>
			          <td>${course.courseDescr}</td>
			          <td><a href="${pageContext.request.contextPath}/course/${course.id}.action" class="glyphicon glyphicon-edit"></a></td>
			          <td><a href="${pageContext.request.contextPath}/course/delete/${course.id}.action" onclick = "return shouconfirm()" class="glyphicon glyphicon-trash"></a></td>
			        </tr>
			          </c:forEach>
			      </tbody>
			    </table>
			</div>
			<bbq:page url="${pageContext.request.contextPath}/course/courseList.action"></bbq:page>
		</div>
  </body>
</html>