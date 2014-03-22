<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath %>">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>首页</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/one-debug.css">
<style type="text/css">
.container {
	margin: 0 auto;
	min-width: 1000px;
	max-width: 1360px;
	padding: 15px;
}
</style>
</head>

<body>
	<div class="ui-box">
	    <div class="ui-box-head">
	        <h3 class="ui-box-head-title">添加会员</h3>
	    </div>
	    <div class="ui-box-container">
	    	<div class="ui-box-content">
		    	<div class="ui-tiptext-container ui-tiptext-container-message">
				    <p class="ui-tiptext ui-tiptext-message">
				        <i class="ui-tiptext-icon iconfont" title="提示">&#xF046;</i>
				        <span class="ui-form-required">*</span>号的为必填项
				    </p>
				</div>
			</div>
			<div class="ui-box-content">
		        <form class="ui-form" name="" method="post" action="#" id="">
					<fieldset>
						<div class="ui-form-item">
							<label for="name" class="ui-label">
								<span class="ui-form-required">*</span>姓名
							</label>
							<input class="ui-input" id="name" name="name" type="text">
							<p class="ui-form-explain">默认文案。</p>
						</div>
						
						<div class="ui-form-item">
							<label for="sex" class="ui-label">
								<span class="ui-form-required">*</span>性别
							</label>
							<select id="sex" name="sex">
							    <option value="0" selected="selected">女</option>
							    <option value="1">男</option>
							</select>
						</div>
						
						<div class="ui-form-item">
							<label for="mobile" class="ui-label">
								<span class="ui-form-required">*</span>手机
							</label>
							<input class="ui-input" id="mobile" name="mobile" type="text">
							<p class="ui-form-explain">例:13800138000</p>
						</div>
			
						<div class="ui-form-item">
							<input type="submit" class="ui-button ui-button-morange" value="确定">
							<input type="button" class="ui-button ui-button-mwhite" value="取消">
						</div>
					</fieldset>
				</form>
			</div>
	    </div>
	</div>
	
	<script charset="utf-8" id="seajsnode"src="http://static.alipayobjects.com/seajs/??seajs/2.1.1/sea.js,seajs-combo/1.0.0/seajs-combo.js,seajs-style/1.0.0/seajs-style.js"></script>
	<script type="text/javascript">
		seajs.config({
			alias : {
				'$' : 'gallery/jquery/1.7.2/jquery',
				'confirmbox' : 'arale/dialog/1.2.6/confirmbox',
				'dialog' : 'arale/dialog/1.2.6/dialog',
				'select' : 'arale/select/0.9.9/select'
			}
		});
		seajs.use('select', function(Select) {
			new Select({
			    trigger: '#sex'
			}).render();
		});
	</script>
</body>
</html>
