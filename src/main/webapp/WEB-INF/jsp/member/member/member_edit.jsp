<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
	<base href="<%=basePath%>">
	<!-- 下拉框 -->
	<link rel="stylesheet" href="static/ace/css/chosen.css" />
	<!-- jsp文件头和头部 -->
	<%@ include file="../../system/index/top.jsp"%>
	<!-- 日期框 -->
	<link rel="stylesheet" href="static/ace/css/datepicker.css" />
</head>
<body class="no-skin">
<!-- /section:basics/navbar.layout -->
<div class="main-container" id="main-container">
	<!-- /section:basics/sidebar -->
	<div class="main-content">
		<div class="main-content-inner">
			<div class="page-content">
				<div class="row">
					<div class="col-xs-12">
					
					<form action="member/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="MEMBER_ID" id="MEMBER_ID" value="${pd.MEMBER_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">会员卡号:</td>
								<td><input type="text" name="MEMBER_NUM" id="MEMBER_NUM" value="${pd.MEMBER_NUM}" maxlength="20" placeholder="这里输入会员卡号" title="会员卡号" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">企业名称:</td>
								<td><input type="text" name="ENTERPRISE_NAME" id="ENTERPRISE_NAME" value="${pd.ENTERPRISE_NAME}" maxlength="100" placeholder="这里输入企业名称" title="企业名称" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">联系电话:</td>
								<td><input type="text" name="CONTACT_PHONE" id="CONTACT_PHONE" value="${pd.CONTACT_PHONE}" maxlength="20" placeholder="这里输入联系电话" title="联系电话" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">企业地址:</td>
								<td><input type="text" name="ENTERPRISE_ADDRESS" id="ENTERPRISE_ADDRESS" value="${pd.ENTERPRISE_ADDRESS}" maxlength="100" placeholder="这里输入企业地址" title="企业地址" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">招聘次数:</td>
								<td><input type="number" name="RECRUIT_CNT" id="RECRUIT_CNT" value="${pd.RECRUIT_CNT}" maxlength="32" placeholder="这里输入招聘次数" title="招聘次数" style="width:98%;"/></td>
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
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.page-content -->
		</div>
	</div>
	<!-- /.main-content -->
</div>
<!-- /.main-container -->


	<!-- 页面底部js¨ -->
	<%@ include file="../../system/index/foot.jsp"%>
	<!-- 下拉框 -->
	<script src="static/ace/js/chosen.jquery.js"></script>
	<!-- 日期框 -->
	<script src="static/ace/js/date-time/bootstrap-datepicker.js"></script>
	<!--提示框-->
	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
		<script type="text/javascript">
		$(top.hangge());
		//保存
		function save(){
			if($("#MEMBER_NUM").val()==""){
				$("#MEMBER_NUM").tips({
					side:3,
		            msg:'请输入会员卡号',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#MEMBER_NUM").focus();
			return false;
			}
			if($("#ENTERPRISE_NAME").val()==""){
				$("#ENTERPRISE_NAME").tips({
					side:3,
		            msg:'请输入企业名称',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ENTERPRISE_NAME").focus();
			return false;
			}
			if($("#CONTACT_PHONE").val()==""){
				$("#CONTACT_PHONE").tips({
					side:3,
		            msg:'请输入联系电话',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#CONTACT_PHONE").focus();
			return false;
			}
			if($("#ENTERPRISE_ADDRESS").val()==""){
				$("#ENTERPRISE_ADDRESS").tips({
					side:3,
		            msg:'请输入企业地址',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ENTERPRISE_ADDRESS").focus();
			return false;
			}
			if($("#RECRUIT_CNT").val()==""){
				$("#RECRUIT_CNT").tips({
					side:3,
		            msg:'请输入招聘次数',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#RECRUIT_CNT").focus();
			return false;
			}
			$("#Form").submit();
			$("#zhongxin").hide();
			$("#zhongxin2").show();
		}
		
		$(function() {
			//日期框
			$('.date-picker').datepicker({autoclose: true,todayHighlight: true});
		});
		</script>
</body>
</html>