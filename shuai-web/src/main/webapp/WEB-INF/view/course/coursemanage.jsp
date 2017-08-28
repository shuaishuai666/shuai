<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>修改课程</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
    <script src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"/></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"/></script>
 	<style>
 	</style>
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
		        <h3>修改课程-课程管理</h3>
		    </div>
		    </div>
    <form class="form-horizontal" action="${pageContext.request.contextPath}/course/coursemanage.action">
						<div style="text-align: center; width: 1200px;">  	
  <div class="form-group">
    <label class="col-sm-2 control-label" for="formGroupInputSmall">所属课程:</label>
    <div class="col-sm-8">
    					<select class="form-control" name="subjectId">
    						<option>请选择所属课程</option>
						<c:forEach var="de" items="${subject}">
							<option value="${ de.id }" ${ de.id==list.subjectId?"selected":"" }>${ de.subjectName}</option>
						</c:forEach>
						</select>
    </div>
  </div>
  <div class="form-group ">
    <label class="col-sm-2 control-label" for="formGroupInputSmall">标题:</label>
    <div class="col-sm-8">
      <input class="form-control" type="text" name="courseName" placeholder="课程标题" value = "${list.courseName}">
    </div>
  </div>
  <div class="form-group">
		        <label for="inputEmail3" class="col-sm-2 control-label">简介:</label>
		        <div class="bs-example" data-example-id="textarea-form-control">
			  <textarea class="col-sm-8 " name ="courseDescr" rows="2" placeholder="Textarea">${list.courseDescr}</textarea>
			 </div>
   </div>
  </div>
  <div style="text-align: center;">
  <input type="hidden" name = "id" value = "${list.id}">
  <button type="submit" class="btn btn-primary" >保存</button>
  <a class="btn btn-default" href="javascript:history.go(-1)">返回列表</a>
  </div>
  
</form>
    
	</body>
</html>
