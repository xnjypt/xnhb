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
		if($("#QUESTIONUSER").val()==""){
			$("#QUESTIONUSER").tips({
				side:3,
	            msg:'请输入提问人',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#QUESTIONUSER").focus();
			return false;
		}
		if($("#STATUS").val()==""){
			$("#STATUS").tips({
				side:3,
	            msg:'请输入状态',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#STATUS").focus();
			return false;
		}
		if($("#QUESTIONTYPE").val()==""){
			$("#QUESTIONTYPE").tips({
				side:3,
	            msg:'请输入问题类型',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#QUESTIONTYPE").focus();
			return false;
		}
		if($("#REPLYCENTENT").val()==""){
			$("#REPLYCENTENT").tips({
				side:3,
	            msg:'请输入回复内容',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#REPLYCENTENT").focus();
			return false;
		}
		if($("#QUESTIONCENTENT").val()==""){
			$("#QUESTIONCENTENT").tips({
				side:3,
	            msg:'请输入提问内容',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#QUESTIONCENTENT").focus();
			return false;
		}
		$("#Form").submit();
		$("#zhongxin").hide();
		$("#zhongxin2").show();
	}
	
</script>
	</head>
<body>
	<form action="userquestion/${msg }.do" name="Form" id="Form" method="post">
		<input type="hidden" name="USERQUESTION_ID" id="USERQUESTION_ID" value="${pd.USERQUESTION_ID}"/>
		<div id="zhongxin">
		<table id="table_report" class="table table-striped table-bordered table-hover">
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">排序:</td>
				<td><input type="number" name="SEQ" id="SEQ" value="${pd.SEQ}" maxlength="32" placeholder="这里输入排序" title="排序"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">提问人:</td>
				<td><input type="text" name="QUESTIONUSER" id="QUESTIONUSER" value="${pd.QUESTIONUSER}" maxlength="32" placeholder="这里输入提问人" title="提问人"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">状态:</td>
				<td><input type="text" name="STATUS" id="STATUS" value="${pd.STATUS}" maxlength="32" placeholder="这里输入状态" title="状态"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">问题类型:</td>
				<td><input type="text" name="QUESTIONTYPE" id="QUESTIONTYPE" value="${pd.QUESTIONTYPE}" maxlength="32" placeholder="这里输入问题类型" title="问题类型"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">回复内容:</td>
				<td><input type="text" name="REPLYCENTENT" id="REPLYCENTENT" value="${pd.REPLYCENTENT}" maxlength="32" placeholder="这里输入回复内容" title="回复内容"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">提问内容:</td>
				<td><input type="text" name="QUESTIONCENTENT" id="QUESTIONCENTENT" value="${pd.QUESTIONCENTENT}" maxlength="32" placeholder="这里输入提问内容" title="提问内容"/></td>
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