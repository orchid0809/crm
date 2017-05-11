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
					
					<form action="talents/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="TALENTS_ID" id="TALENTS_ID" value="${pd.TALENTS_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">姓名:</td>
								<td><input type="text" name="NAME" id="NAME" value="${pd.NAME}" maxlength="20" placeholder="这里输入姓名" title="姓名" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">联系电话:</td>
								<td><input type="text" name="CONTACT_PHONE" id="CONTACT_PHONE" value="${pd.CONTACT_PHONE}" maxlength="20" placeholder="这里输入联系电话" title="联系电话" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">性别:</td>
								<%--<td><input type="number" name="SEX" id="SEX" value="${pd.SEX}" maxlength="32" placeholder="这里输入性别" title="性别" style="width:98%;"/></td>--%>
								<td>
									<label style="float:left;padding-left: 8px;padding-top:7px;">
										<input name="SEX" class="ace" id="form-field-radio1" type="radio" value="0">	<span class="lbl">男</span>

									</label>
									<label style="float:left;padding-left: 5px;padding-top:7px;">
										<input name="SEX" class="ace" id="form-field-radio2" type="radio" value="1">	<span class="lbl">女</span>

									</label>
								</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">工作时间:</td>
								<%--<td><input type="text" name="WORKING_TIME" id="WORKING_TIME" value="${pd.WORKING_TIME}" maxlength="10" placeholder="这里输入工作时间" title="工作时间" style="width:98%;"/></td>--%>
								<td>
									<div class="col-sm-9" style="width:30%;">
										<select class="chosen-select form-control" name="WORKING_TIME" id="id" data-placeholder="请选择">
											<option value="1年">1年</option>
											<option value="2年">2年</option>
											<option value="3年">3年</option>
											<option value="4年">4年</option>
											<option value="5年">5年</option>
											<option value="6年">6年</option>
											<option value="7年">7年</option>
											<option value="8年">8年</option>
											<option value="9年">9年</option>
											<option value="10年">10年</option>
											<option value="11年">11年</option>
											<option value="12年">12年</option>
											<option value="13年">13年</option>
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">期望薪资:</td>
								<td><input type="number" name="EXPECTED_SALARY" id="EXPECTED_SALARY" value="${pd.EXPECTED_SALARY}" maxlength="32" placeholder="这里输入期望薪资" title="期望薪资" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">求职工种:</td>
								<td><input type="text" name="JOB_INTENSION" id="JOB_INTENSION" value="${pd.JOB_INTENSION}" maxlength="50" placeholder="这里输入求职工种" title="求职工种" style="width:98%;"/></td>
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
			if($("#NAME").val()==""){
				$("#NAME").tips({
					side:3,
		            msg:'请输入姓名',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#NAME").focus();
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
			if($("#SEX").val()==""){
				$("#SEX").tips({
					side:3,
		            msg:'请输入性别',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#SEX").focus();
			return false;
			}
			if($("#WORKING_TIME").val()==""){
				$("#WORKING_TIME").tips({
					side:3,
		            msg:'请输入工作时间',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#WORKING_TIME").focus();
			return false;
			}
			if($("#EXPECTED_SALARY").val()==""){
				$("#EXPECTED_SALARY").tips({
					side:3,
		            msg:'请输入期望薪资',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#EXPECTED_SALARY").focus();
			return false;
			}
			if($("#JOB_INTENSION").val()==""){
				$("#JOB_INTENSION").tips({
					side:3,
		            msg:'请输入求职工种',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#JOB_INTENSION").focus();
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