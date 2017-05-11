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
					
					<form action="rental/${msg }.do" name="Form" id="Form" method="post">
						<input type="hidden" name="RENTAL_ID" id="RENTAL_ID" value="${pd.RENTAL_ID}"/>
						<div id="zhongxin" style="padding-top: 13px;">
						<table id="table_report" class="table table-striped table-bordered table-hover">
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">信息标题:</td>
								<%--<td><input type="text" name="INFO_TITLE" id="INFO_TITLE" value="${pd.INFO_TITLE}" maxlength="100" placeholder="这里输入信息标题" title="信息标题" style="width:98%;"/></td>--%>
								<td>
									<div class="col-md-9">
										<input type="text" name="INFO_TITLE" id="INFO_TITLE" value="${pd.INFO_TITLE}" maxlength="100" placeholder="这里输入信息标题" title="信息标题" style="width:98%;"/>
									</div>

									<div class="col-md-3">
										<div class="form-group">
											<%--<label class="col-sm-3 control-label no-padding-right" for="form-field-1">单选框：</label>--%>
											<div class="col-sm-9">
												<label style="float:left;padding-left: 8px;padding-top:7px;">
													<input name="TYPE" class="ace" id="form-field-radio1" type="radio" VALUE="0">	<span class="lbl">出租</span>

												</label>
												<label style="float:left;padding-left: 5px;padding-top:7px;">
													<input name="TYPE" class="ace" id="form-field-radio2" type="radio" VALUE="1">	<span class="lbl">出售</span>

												</label>
											</div>
										</div>

									</div>
								</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">信息内容:</td>
								<%--<td><input type="text" name="INFO_CONTENT" id="INFO_CONTENT" value="${pd.INFO_CONTENT}" maxlength="251" placeholder="这里输入信息内容" title="信息内容" style="width:98%;"/></td>--%>
								<td>
									<div class="col-md-12">
										<div class="form-group">
											<%--<label class="col-sm-3 control-label no-padding-right" for="form-field-1">富文本：</label>--%>
											<div class="col-sm-9">
												<script id="editor" name="INFO_CONTENT" data-loading-text="ddded" type="text/plain" style="width:96%;height:200px;"></script>
											</div>
										</div>
									</div>

								</td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">联系电话:</td>
								<td><input type="text" name="CONTACT_PHONE" id="CONTACT_PHONE" value="${pd.CONTACT_PHONE}" maxlength="20" placeholder="这里输入联系电话" title="联系电话" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">发布时间:</td>
								<td><input class="span10 date-picker" name="PUBLISH_TIME" id="PUBLISH_TIME" value="${pd.PUBLISH_TIME}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="发布时间" title="发布时间" style="width:98%;"/></td>
							</tr>
							<tr>
								<td style="width:75px;text-align: right;padding-top: 13px;">截至时间:</td>
								<td><input class="span10 date-picker" name="DEADLINE_TIME" id="DEADLINE_TIME" value="${pd.DEADLINE_TIME}" type="text" data-date-format="yyyy-mm-dd" readonly="readonly" placeholder="截至时间" title="截至时间" style="width:98%;"/></td>
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

<!-- 百度富文本编辑框-->
<script type="text/javascript" charset="utf-8">window.UEDITOR_HOME_URL = "<%=path%>/plugins/ueditor/";</script>
<script type="text/javascript" charset="utf-8" src="plugins/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="plugins/ueditor/ueditor.all.js"></script>
<!-- 百度富文本编辑框-->
<!-- ace scripts -->
<script src="static/ace/js/ace/ace.js"></script>
		<script type="text/javascript">
		$(top.hangge());
		//保存
		function save(){
			if($("#INFO_TITLE").val()==""){
				$("#INFO_TITLE").tips({
					side:3,
		            msg:'请输入信息标题',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#INFO_TITLE").focus();
			return false;
			}
			if($("#INFO_CONTENT").val()==""){
				$("#INFO_CONTENT").tips({
					side:3,
		            msg:'请输入信息内容',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#INFO_CONTENT").focus();
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
		            msg:'请输入截至时间',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#DEADLINE_TIME").focus();
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

		//百度富文本
		setTimeout("ueditor()",500);
		function ueditor(){
			UE.getEditor('editor');

			var ue = UE.getEditor('editor');
			var proinfo='${pd.INFO_CONTENT}';

			ue.ready(function() {//编辑器初始化完成再赋值
				ue.setContent(proinfo);  //赋值给UEditor
			});


		}
		</script>
</body>
</html>