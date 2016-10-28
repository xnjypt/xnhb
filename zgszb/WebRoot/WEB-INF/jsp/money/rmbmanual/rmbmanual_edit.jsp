<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<base href="<%=basePath%>">
		<meta charset="utf-8" />
		<title></title>
		<meta name="description" content="overview & stats" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link href="static/css/bootstrap.min.css" rel="stylesheet" />
		<link href="static/css/bootstrap-responsive.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="static/css/font-awesome.min.css" />
		<!-- 下拉框 -->
		<link rel="stylesheet" href="static/css/chosen.css" />
		
		<link rel="stylesheet" href="static/css/ace.min.css" />
		<link rel="stylesheet" href="static/css/ace-responsive.min.css" />
		<link rel="stylesheet" href="static/css/ace-skins.min.css" />
		
		<link rel="stylesheet" href="static/css/datepicker.css" /><!-- 日期框 -->
		<script type="text/javascript" src="static/js/jquery-1.7.2.js"></script>
		<script type="text/javascript" src="static/js/jquery.tips.js"></script>
		
<script type="text/javascript">
	
	
	//保存
	function save(){
			if($("#DESCRIPTION").val()==""){
			$("#DESCRIPTION").tips({
				side:3,
	            msg:'请输入描述',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#DESCRIPTION").focus();
			return false;
		}
		if($("#LOGINNAME").val()==""){
			$("#LOGINNAME").tips({
				side:3,
	            msg:'请输入登录名',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#LOGINNAME").focus();
			return false;
		}
		if($("#REMITTANCETYPE").val()==""){
			$("#REMITTANCETYPE").tips({
				side:3,
	            msg:'请输入汇款方式',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#REMITTANCETYPE").focus();
			return false;
		}
		if($("#MONEY").val()==""){
			$("#MONEY").tips({
				side:3,
	            msg:'请输入金额',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#MONEY").focus();
			return false;
		}
		$("#Form").submit();
		$("#zhongxin").hide();
		$("#zhongxin2").show();
	}
	
</script>
	</head>
<body>
	<form action="rmbmanual/${msg }.do" name="Form" id="Form" method="post">
		<input type="hidden" name="RMBMANUAL_ID" id="RMBMANUAL_ID" value="${pd.RMBMANUAL_ID}"/>
		<div id="zhongxin">
		<table id="table_report" class="table table-striped table-bordered table-hover">
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">描述:</td>
				<td><input type="text" name="DESCRIPTION" id="DESCRIPTION" value="${pd.DESCRIPTION}" maxlength="32" placeholder="这里输入描述" title="描述"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">登录名:</td>
				<td><input type="text" name="LOGINNAME" id="LOGINNAME" value="${pd.LOGINNAME}" maxlength="32" placeholder="这里输入登录名" title="登录名"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">汇款方式:</td>
				<td><input type="text" name="REMITTANCETYPE" id="REMITTANCETYPE" value="${pd.REMITTANCETYPE}" maxlength="32" placeholder="这里输入汇款方式" title="汇款方式"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">金额:</td>
				<td><input type="number" name="MONEY" id="MONEY" value="${pd.MONEY}" maxlength="32" placeholder="这里输入金额" title="金额"/></td>
			</tr>
			<tr>
				<td style="text-align: center;" colspan="10">
					<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
					<a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a>
				</td>
			</tr>
		</table>
		</div>
		
		<div id="zhongxin2" class="center" style="display:none"><br/><br/><br/><br/><br/><img src="static/images/jiazai.gif" /><br/><h4 class="lighter block green">提交中...</h4></div>
		
	</form>
	
	
		<!-- 引入 -->
		<script type="text/javascript">window.jQuery || document.write("<script src='static/js/jquery-1.9.1.min.js'>\x3C/script>");</script>
		<script src="static/js/bootstrap.min.js"></script>
		<script src="static/js/ace-elements.min.js"></script>
		<script src="static/js/ace.min.js"></script>
		<script type="text/javascript" src="static/js/chosen.jquery.min.js"></script><!-- 下拉框 -->
		<script type="text/javascript" src="static/js/bootstrap-datepicker.min.js"></script><!-- 日期框 -->
		<script type="text/javascript">
		$(top.hangge());
		$(function() {
			
			//单选框
			$(".chzn-select").chosen(); 
			$(".chzn-select-deselect").chosen({allow_single_deselect:true}); 
			
			//日期框
			$('.date-picker').datepicker();
			
		});
		
		</script>
</body>
</html>