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
					
					<form action="recruit/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="RECRUIT_ID" id="RECRUIT_ID" value="${pd.RECRUIT_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<%--<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">发布:</td>
								<td><input type="text" name="PUBLISH_NAME" id="PUBLISH_NAME" value="${pd.PUBLISH_NAME}" maxlength="50" placeholder="这里输入发布" title="发布" style="width:98%;"/></td>
							</tr>
							--%><tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">企业名称:</td>
								<td><input type="text" name="ENTERPRISE_NAME" id="ENTERPRISE_NAME" value="${pd.ENTERPRISE_NAME}" maxlength="100" placeholder="这里输入企业名称" title="企业名称" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">联系电话:</td>
								<td><input type="text" name="CONTACT_PHONE" id="CONTACT_PHONE" value="${pd.CONTACT_PHONE}" maxlength="20" placeholder="这里输入联系电话" title="联系电话" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">地址:</td>
								<td><input type="text" name="ENTERPRISE_ADDRESS" id="ENTERPRISE_ADDRESS" value="${pd.ENTERPRISE_ADDRESS}" maxlength="100" placeholder="这里输入地址" title="地址" style="width:98%;"/></td>
							</tr>
							
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">招聘信息:</td>
								<td>
									<table id="table_report2" class="table table-striped table-bordered table-hover">
											<tr>
												<td style="width:75px;text-align: left;padding-top: 13px;">招聘职位</td>
												<td style="width:75px;text-align: left;padding-top: 13px;">招聘人数</td>
												<td style="width:75px;text-align: left;padding-top: 13px;">职位要求</td>
												<td style="width:15px;text-align: left;padding-top: 13px;">操作</td>
											</tr>
											<tr>
												<td><input type="text" name="recruits[0].recruitPosition" value="${pd.ENTERPRISE_ADDRESS}" maxlength="100" placeholder="这里输入招聘职位" title="招聘职位" style="width:98%;"/></td>
												<td><input type="text" name="recruits[0].recruitCnt" value="${pd.ENTERPRISE_ADDRESS}" maxlength="100" placeholder="这里输入招聘人数" title="招聘人数" style="width:98%;"/></td>
												<td><input type="text" name="recruits[0].positionRequire" value="${pd.ENTERPRISE_ADDRESS}" maxlength="100" placeholder="这里输入职位要求" title="职位要求" style="width:98%;"/></td>
												<td>
													<i class="ace-icon fa fa-trash-o bigger-120" title="删除"></i>
													<i class="glyphicon glyphicon-plus" title="增加"></i>
													 	
												</td>
											</tr>
											
											<tr>
												<td><input type="text" name="recruits[1].recruitPosition" value="${pd.ENTERPRISE_ADDRESS}" maxlength="100" placeholder="这里输入招聘职位" title="招聘职位" style="width:98%;"/></td>
												<td><input type="text" name="recruits[1].recruitCnt" value="${pd.ENTERPRISE_ADDRESS}" maxlength="100" placeholder="这里输入招聘人数" title="招聘人数" style="width:98%;"/></td>
												<td><input type="text" name="recruits[1].positionRequire" value="${pd.ENTERPRISE_ADDRESS}" maxlength="100" placeholder="这里输入职位要求" title="职位要求" style="width:98%;"/></td>
												<td>
													<i class="ace-icon fa fa-trash-o bigger-120" title="删除"></i>
													<i class="glyphicon glyphicon-plus" title="增加"></i>
												</td>
											</tr>
										
									</table>
								</td>
							</tr>
							
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">发布时间:</td>
								<td><input class="span10 date-picker" name="PUBLISH_TIME" id="PUBLISH_TIME" value="${pd.PUBLISH_TIME}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="发布时间" title="发布时间" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">截止时间:</td>
								<td><input class="span10 date-picker" name="DEADLINE_TIME" id="DEADLINE_TIME" value="${pd.DEADLINE_TIME}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="截止时间" title="截止时间" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">金额:</td>
								<td><input type="text" name="AMOUNT" id="AMOUNT" value="${pd.AMOUNT}" maxlength="6" placeholder="这里输入金额" title="金额" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">备注:</td>
								<td><input type="text" name="REMARK" id="REMARK" value="${pd.REMARK}" maxlength="300" placeholder="这里输入备注" title="备注" style="width:98%;"/></td>
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
			if($("#PUBLISH_NAME").val()==""){
				$("#PUBLISH_NAME").tips({
					side:3,
		            msg:'请输入发布',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#PUBLISH_NAME").focus();
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
		            msg:'请输入地址',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#ENTERPRISE_ADDRESS").focus();
			return false;
			}
			if($("#PUBLISH_TIME").val()==""){
				$("#PUBLISH_TIME").tips({
					side:3,
		            msg:'请输入发布时间',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#PUBLISH_TIME").focus();
			return false;
			}
			if($("#DEADLINE_TIME").val()==""){
				$("#DEADLINE_TIME").tips({
					side:3,
		            msg:'请输入截止时间',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#DEADLINE_TIME").focus();
			return false;
			}
			if($("#AMOUNT").val()==""){
				$("#AMOUNT").tips({
					side:3,
		            msg:'请输入金额',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#AMOUNT").focus();
			return false;
			}
			if($("#REMARK").val()==""){
				$("#REMARK").tips({
					side:3,
		            msg:'请输入备注',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#REMARK").focus();
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