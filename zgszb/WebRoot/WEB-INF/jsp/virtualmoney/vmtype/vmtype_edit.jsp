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
		if($("#JTTYPENAME").val()==""){
			$("#JTTYPENAME").tips({
				side:3,
	            msg:'请输入简体类型名称',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#JTTYPENAME").focus();
			return false;
		}
		if($("#FTTYPENAME").val()==""){
			$("#FTTYPENAME").tips({
				side:3,
	            msg:'请输入繁体类型名称',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#FTTYPENAME").focus();
			return false;
		}
		if($("#ENTYPENAME").val()==""){
			$("#ENTYPENAME").tips({
				side:3,
	            msg:'请输入英语类型名称',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#ENTYPENAME").focus();
			return false;
		}
		if($("#VMNUMBER").val()==""){
			$("#VMNUMBER").tips({
				side:3,
	            msg:'请输入货币编码',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#VMNUMBER").focus();
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
		if($("#SHORTNAME").val()==""){
			$("#SHORTNAME").tips({
				side:3,
	            msg:'请输入简称',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#SHORTNAME").focus();
			return false;
		}
		if($("#SYMBOL").val()==""){
			$("#SYMBOL").tips({
				side:3,
	            msg:'请输入符号',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#SYMBOL").focus();
			return false;
		}
		if($("#IP").val()==""){
			$("#IP").tips({
				side:3,
	            msg:'请输入ip',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#IP").focus();
			return false;
		}
		if($("#URL").val()==""){
			$("#URL").tips({
				side:3,
	            msg:'请输入url',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#URL").focus();
			return false;
		}
		if($("#PORT").val()==""){
			$("#PORT").tips({
				side:3,
	            msg:'请输入端口',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#PORT").focus();
			return false;
		}
		if($("#ISTRADING").val()==""){
			$("#ISTRADING").tips({
				side:3,
	            msg:'请输入是否可以交易',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#ISTRADING").focus();
			return false;
		}
		if($("#ISWITHDRAWAL").val()==""){
			$("#ISWITHDRAWAL").tips({
				side:3,
	            msg:'请输入是否可以提现',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#ISWITHDRAWAL").focus();
			return false;
		}
		if($("#ISUSPENDED").val()==""){
			$("#ISUSPENDED").tips({
				side:3,
	            msg:'请输入是否停盘',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#ISUSPENDED").focus();
			return false;
		}
		if($("#OPENDATETIME").val()==""){
			$("#OPENDATETIME").tips({
				side:3,
	            msg:'请输入开盘时间',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#OPENDATETIME").focus();
			return false;
		}
		if($("#CLOSEDATETIME").val()==""){
			$("#CLOSEDATETIME").tips({
				side:3,
	            msg:'请输入停盘时间',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#CLOSEDATETIME").focus();
			return false;
		}
		if($("#INTRODUCTION").val()==""){
			$("#INTRODUCTION").tips({
				side:3,
	            msg:'请输入介绍',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#INTRODUCTION").focus();
			return false;
		}
		if($("#ACCESSKEY").val()==""){
			$("#ACCESSKEY").tips({
				side:3,
	            msg:'请输入accessKey',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#ACCESSKEY").focus();
			return false;
		}
		if($("#SECRTKEY").val()==""){
			$("#SECRTKEY").tips({
				side:3,
	            msg:'请输入secrtKey',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#SECRTKEY").focus();
			return false;
		}
		if($("#LOGO").val()==""){
			$("#LOGO").tips({
				side:3,
	            msg:'请输入logo',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#LOGO").focus();
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
		$("#Form").submit();
		$("#zhongxin").hide();
		$("#zhongxin2").show();
	}
	
</script>
	</head>
<body>
	<form action="vmtype/${msg }.do" name="Form" id="Form" method="post">
		<input type="hidden" name="VMTYPE_ID" id="VMTYPE_ID" value="${pd.VMTYPE_ID}"/>
		<div id="zhongxin">
		<table id="table_report" class="table table-striped table-bordered table-hover">
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">排序:</td>
				<td><input type="number" name="SEQ" id="SEQ" value="${pd.SEQ}" maxlength="32" placeholder="这里输入排序" title="排序"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">描述:</td>
				<td><input type="text" name="DESCRIPTION" id="DESCRIPTION" value="${pd.DESCRIPTION}" maxlength="32" placeholder="这里输入描述" title="描述"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">简体类型名称:</td>
				<td><input type="text" name="JTTYPENAME" id="JTTYPENAME" value="${pd.JTTYPENAME}" maxlength="32" placeholder="这里输入简体类型名称" title="简体类型名称"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">繁体类型名称:</td>
				<td><input type="text" name="FTTYPENAME" id="FTTYPENAME" value="${pd.FTTYPENAME}" maxlength="32" placeholder="这里输入繁体类型名称" title="繁体类型名称"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">英语类型名称:</td>
				<td><input type="text" name="ENTYPENAME" id="ENTYPENAME" value="${pd.ENTYPENAME}" maxlength="32" placeholder="这里输入英语类型名称" title="英语类型名称"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">货币编码:</td>
				<td><input type="text" name="VMNUMBER" id="VMNUMBER" value="${pd.VMNUMBER}" maxlength="32" placeholder="这里输入货币编码" title="货币编码"/></td>
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
				<td style="width:70px;text-align: right;padding-top: 13px;">状态:</td>
				<td><input type="text" name="STATUS" id="STATUS" value="${pd.STATUS}" maxlength="32" placeholder="这里输入状态" title="状态"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">简称:</td>
				<td><input type="text" name="SHORTNAME" id="SHORTNAME" value="${pd.SHORTNAME}" maxlength="32" placeholder="这里输入简称" title="简称"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">符号:</td>
				<td><input type="text" name="SYMBOL" id="SYMBOL" value="${pd.SYMBOL}" maxlength="32" placeholder="这里输入符号" title="符号"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">ip:</td>
				<td><input type="text" name="IP" id="IP" value="${pd.IP}" maxlength="32" placeholder="这里输入ip" title="ip"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">url:</td>
				<td><input type="text" name="URL" id="URL" value="${pd.URL}" maxlength="32" placeholder="这里输入url" title="url"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">端口:</td>
				<td><input type="text" name="PORT" id="PORT" value="${pd.PORT}" maxlength="32" placeholder="这里输入端口" title="端口"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">是否可以交易:</td>
				<td><input type="text" name="ISTRADING" id="ISTRADING" value="${pd.ISTRADING}" maxlength="32" placeholder="这里输入是否可以交易" title="是否可以交易"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">是否可以提现:</td>
				<td><input type="text" name="ISWITHDRAWAL" id="ISWITHDRAWAL" value="${pd.ISWITHDRAWAL}" maxlength="32" placeholder="这里输入是否可以提现" title="是否可以提现"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">是否停盘:</td>
				<td><input type="text" name="ISUSPENDED" id="ISUSPENDED" value="${pd.ISUSPENDED}" maxlength="32" placeholder="这里输入是否停盘" title="是否停盘"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">开盘时间:</td>
				<td><input class="span10 date-picker" name="OPENDATETIME" id="OPENDATETIME" value="${pd.OPENDATETIME}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="开盘时间" title="开盘时间"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">停盘时间:</td>
				<td><input class="span10 date-picker" name="CLOSEDATETIME" id="CLOSEDATETIME" value="${pd.CLOSEDATETIME}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="停盘时间" title="停盘时间"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">介绍:</td>
				<td><input type="text" name="INTRODUCTION" id="INTRODUCTION" value="${pd.INTRODUCTION}" maxlength="32" placeholder="这里输入介绍" title="介绍"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">accessKey:</td>
				<td><input type="text" name="ACCESSKEY" id="ACCESSKEY" value="${pd.ACCESSKEY}" maxlength="32" placeholder="这里输入accessKey" title="accessKey"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">secrtKey:</td>
				<td><input type="text" name="SECRTKEY" id="SECRTKEY" value="${pd.SECRTKEY}" maxlength="32" placeholder="这里输入secrtKey" title="secrtKey"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">logo:</td>
				<td><input type="text" name="LOGO" id="LOGO" value="${pd.LOGO}" maxlength="32" placeholder="这里输入logo" title="logo"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">关键字:</td>
				<td><input type="text" name="KEYWORD" id="KEYWORD" value="${pd.KEYWORD}" maxlength="32" placeholder="这里输入关键字" title="关键字"/></td>
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