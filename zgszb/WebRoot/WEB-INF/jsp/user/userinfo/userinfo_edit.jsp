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
			if($("#MOBILE").val()==""){
			$("#MOBILE").tips({
				side:3,
	            msg:'请输入手机',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#MOBILE").focus();
			return false;
		}
		if($("#EMAIL").val()==""){
			$("#EMAIL").tips({
				side:3,
	            msg:'请输入邮箱',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#EMAIL").focus();
			return false;
		}
		if($("#TOTALMONEY").val()==""){
			$("#TOTALMONEY").tips({
				side:3,
	            msg:'请输入总资产',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#TOTALMONEY").focus();
			return false;
		}
		if($("#LOCATION").val()==""){
			$("#LOCATION").tips({
				side:3,
	            msg:'请输入地区',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#LOCATION").focus();
			return false;
		}
		if($("#REALNAME").val()==""){
			$("#REALNAME").tips({
				side:3,
	            msg:'请输入真实姓名',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#REALNAME").focus();
			return false;
		}
		if($("#CARDTYPE").val()==""){
			$("#CARDTYPE").tips({
				side:3,
	            msg:'请输入证件类型',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#CARDTYPE").focus();
			return false;
		}
		if($("#CARDNUMBER").val()==""){
			$("#CARDNUMBER").tips({
				side:3,
	            msg:'请输入证件号码',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#CARDNUMBER").focus();
			return false;
		}
		if($("#NICKNAME").val()==""){
			$("#NICKNAME").tips({
				side:3,
	            msg:'请输入昵称',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#NICKNAME").focus();
			return false;
		}
		if($("#TRADEPASSWORD").val()==""){
			$("#TRADEPASSWORD").tips({
				side:3,
	            msg:'请输入交易密码',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#TRADEPASSWORD").focus();
			return false;
		}
		if($("#MEMBERLEVEL").val()==""){
			$("#MEMBERLEVEL").tips({
				side:3,
	            msg:'请输入会员等级',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#MEMBERLEVEL").focus();
			return false;
		}
		if($("#MERCHANTSID").val()==""){
			$("#MERCHANTSID").tips({
				side:3,
	            msg:'请输入商家号',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#MERCHANTSID").focus();
			return false;
		}
		if($("#WITHDRAWALSTATUS").val()==""){
			$("#WITHDRAWALSTATUS").tips({
				side:3,
	            msg:'请输入提现状态',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#WITHDRAWALSTATUS").focus();
			return false;
		}
		if($("#MENTIONMONEYSTATUS").val()==""){
			$("#MENTIONMONEYSTATUS").tips({
				side:3,
	            msg:'请输入提币状态',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#MENTIONMONEYSTATUS").focus();
			return false;
		}
		$("#Form").submit();
		$("#zhongxin").hide();
		$("#zhongxin2").show();
	}
	
</script>
	</head>
<body>
	<form action="userinfo/${msg }.do" name="Form" id="Form" method="post">
		<input type="hidden" name="USERINFO_ID" id="USERINFO_ID" value="${pd.USERINFO_ID}"/>
		<div id="zhongxin">
		<table id="table_report" class="table table-striped table-bordered table-hover">
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">手机:</td>
				<td><input type="text" name="MOBILE" id="MOBILE" value="${pd.MOBILE}" maxlength="32" placeholder="这里输入手机" title="手机"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">邮箱:</td>
				<td><input type="text" name="EMAIL" id="EMAIL" value="${pd.EMAIL}" maxlength="32" placeholder="这里输入邮箱" title="邮箱"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">总资产:</td>
				<td><input type="number" name="TOTALMONEY" id="TOTALMONEY" value="${pd.TOTALMONEY}" maxlength="32" placeholder="这里输入总资产" title="总资产"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">地区:</td>
				<td><input type="text" name="LOCATION" id="LOCATION" value="${pd.LOCATION}" maxlength="32" placeholder="这里输入地区" title="地区"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">真实姓名:</td>
				<td><input type="text" name="REALNAME" id="REALNAME" value="${pd.REALNAME}" maxlength="32" placeholder="这里输入真实姓名" title="真实姓名"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">证件类型:</td>
				<td><input type="text" name="CARDTYPE" id="CARDTYPE" value="${pd.CARDTYPE}" maxlength="32" placeholder="这里输入证件类型" title="证件类型"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">证件号码:</td>
				<td><input type="text" name="CARDNUMBER" id="CARDNUMBER" value="${pd.CARDNUMBER}" maxlength="32" placeholder="这里输入证件号码" title="证件号码"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">昵称:</td>
				<td><input type="text" name="NICKNAME" id="NICKNAME" value="${pd.NICKNAME}" maxlength="32" placeholder="这里输入昵称" title="昵称"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">交易密码:</td>
				<td><input type="text" name="TRADEPASSWORD" id="TRADEPASSWORD" value="${pd.TRADEPASSWORD}" maxlength="32" placeholder="这里输入交易密码" title="交易密码"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">会员等级:</td>
				<td><input type="number" name="MEMBERLEVEL" id="MEMBERLEVEL" value="${pd.MEMBERLEVEL}" maxlength="32" placeholder="这里输入会员等级" title="会员等级"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">商家号:</td>
				<td><input type="text" name="MERCHANTSID" id="MERCHANTSID" value="${pd.MERCHANTSID}" maxlength="32" placeholder="这里输入商家号" title="商家号"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">提现状态:</td>
				<td><input type="text" name="WITHDRAWALSTATUS" id="WITHDRAWALSTATUS" value="${pd.WITHDRAWALSTATUS}" maxlength="32" placeholder="这里输入提现状态" title="提现状态"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">提币状态:</td>
				<td><input type="text" name="MENTIONMONEYSTATUS" id="MENTIONMONEYSTATUS" value="${pd.MENTIONMONEYSTATUS}" maxlength="32" placeholder="这里输入提币状态" title="提币状态"/></td>
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