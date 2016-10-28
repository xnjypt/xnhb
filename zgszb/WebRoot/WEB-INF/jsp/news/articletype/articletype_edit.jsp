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
			if($("#CREATEDATETIME").val()==""){
			$("#CREATEDATETIME").tips({
				side:3,
	            msg:'请输入创建时间',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#CREATEDATETIME").focus();
			return false;
		}
		if($("#CREATEUSER").val()==""){
			$("#CREATEUSER").tips({
				side:3,
	            msg:'请输入创建人',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#CREATEUSER").focus();
			return false;
		}
		if($("#UPDATEDATETIME").val()==""){
			$("#UPDATEDATETIME").tips({
				side:3,
	            msg:'请输入修改时间',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#UPDATEDATETIME").focus();
			return false;
		}
		if($("#UPDATEUSER").val()==""){
			$("#UPDATEUSER").tips({
				side:3,
	            msg:'请输入修改人',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#UPDATEUSER").focus();
			return false;
		}
		if($("#SEQ").val()==""){
			$("#SEQ").tips({
				side:3,
	            msg:'请输入排序',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#SEQ").focus();
			return false;
		}
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
		if($("#TYPENAME").val()==""){
			$("#TYPENAME").tips({
				side:3,
	            msg:'请输入类型名称',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#TYPENAME").focus();
			return false;
		}
		if($("#PID").val()==""){
			$("#PID").tips({
				side:3,
	            msg:'请输入父ID',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#PID").focus();
			return false;
		}
		if($("#LANGUAGE").val()==""){
			$("#LANGUAGE").tips({
				side:3,
	            msg:'请输入语言',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#LANGUAGE").focus();
			return false;
		}
		if($("#KEYWORD").val()==""){
			$("#KEYWORD").tips({
				side:3,
	            msg:'请输入关键字',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#KEYWORD").focus();
			return false;
		}
		if($("#TYPENUMBER").val()==""){
			$("#TYPENUMBER").tips({
				side:3,
	            msg:'请输入类型编码',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#TYPENUMBER").focus();
			return false;
		}
		$("#Form").submit();
		$("#zhongxin").hide();
		$("#zhongxin2").show();
	}
	
</script>
	</head>
<body>
	<form action="articletype/${msg }.do" name="Form" id="Form" method="post">
		<input type="hidden" name="ARTICLETYPE_ID" id="ARTICLETYPE_ID" value="${pd.ARTICLETYPE_ID}"/>
		<div id="zhongxin">
		<table id="table_report" class="table table-striped table-bordered table-hover">
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">创建时间:</td>
				<td><input class="span10 date-picker" name="CREATEDATETIME" id="CREATEDATETIME" value="${pd.CREATEDATETIME}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="创建时间" title="创建时间"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">创建人:</td>
				<td><input type="text" name="CREATEUSER" id="CREATEUSER" value="${pd.CREATEUSER}" maxlength="32" placeholder="这里输入创建人" title="创建人"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">修改时间:</td>
				<td><input class="span10 date-picker" name="UPDATEDATETIME" id="UPDATEDATETIME" value="${pd.UPDATEDATETIME}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="修改时间" title="修改时间"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">修改人:</td>
				<td><input type="text" name="UPDATEUSER" id="UPDATEUSER" value="${pd.UPDATEUSER}" maxlength="32" placeholder="这里输入修改人" title="修改人"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">排序:</td>
				<td><input type="number" name="SEQ" id="SEQ" value="${pd.SEQ}" maxlength="32" placeholder="这里输入排序" title="排序"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">描述:</td>
				<td><input type="text" name="DESCRIPTION" id="DESCRIPTION" value="${pd.DESCRIPTION}" maxlength="32" placeholder="这里输入描述" title="描述"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">类型名称:</td>
				<td><input type="text" name="TYPENAME" id="TYPENAME" value="${pd.TYPENAME}" maxlength="32" placeholder="这里输入类型名称" title="类型名称"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">父ID:</td>
				<td><input type="text" name="PID" id="PID" value="${pd.PID}" maxlength="32" placeholder="这里输入父ID" title="父ID"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">语言:</td>
				<td><input type="text" name="LANGUAGE" id="LANGUAGE" value="${pd.LANGUAGE}" maxlength="32" placeholder="这里输入语言" title="语言"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">关键字:</td>
				<td><input type="text" name="KEYWORD" id="KEYWORD" value="${pd.KEYWORD}" maxlength="32" placeholder="这里输入关键字" title="关键字"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">类型编码:</td>
				<td><input type="text" name="TYPENUMBER" id="TYPENUMBER" value="${pd.TYPENUMBER}" maxlength="32" placeholder="这里输入类型编码" title="类型编码"/></td>
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