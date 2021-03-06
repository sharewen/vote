<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/comm/mate.jsp"%>
<%@page import="com.indihx.comm.InitSysConstants"%>
<%@page import="com.indihx.system.entity.UsrInfo"%>
<%@page import="com.indihx.comm.util.DateUtil"%>
<%@page import="com.indihx.credit.commons.CreditConstants"%>
<%
UsrInfo user = (UsrInfo) session.getAttribute("usrInfo");

String ishpbid="";
if(user.getOrgType().equals(InitSysConstants.ORGTYPE_QUJU)){ 
	ishpbid=user.getHpbBaseId();
}
%>
<html>
<head>
<script type="text/javascript">
	$(document).ready(function(){
		$("#hidden1").hide();
		
		$('ul li').click(function() {
			$(this).siblings('li').removeClass('active'); //删除其他兄弟元素的样式
			$(this).addClass('active'); // 添加当前元素的样式
			var data = $(this).attr('data');
			switchView(data); //切换视图展示
		});
	}); 
	
	function switchView(data) {
		if (data == "0") {
			$('#_baseInfo').removeClass('collapse');
			$('#_file_info').addClass('collapse');
		} else if (data == "1") {
			$('#_baseInfo').addClass('collapse');
			$('#_file_info').removeClass('collapse');
		} 
	}
	
	//保存按钮
	function save() {
		switchView("1");
		var res =$('#i-form').validate({
			rules:{
				appeal_reasion:{
					required: true
				}
			}
		});
		//验证tab1表单验证是否通过,false表示未通过，true表示通过
		if(!res.form()){
			return;
		}else{
			$.indi.ajaxSubmit({url: "${ctx}/credit/appeal/saveAppealInfo.do",success:function(data){
				$("#_appId").val(data.appId);
				$("#_nextOrgId").val(data.nextOrgId);
				layer.alert("异议申诉申请保存成功!",{icon: 1});
			}});
		}
	}
	
	//提交按钮
	function send(){
		switchView("1");
		var res =$('#i-form').validate({
			rules:{
				appeal_reasion:{
					required: true
				}
			}
		});
		//验证tab1表单验证是否通过,false表示未通过，true表示通过
		if(!res.form()){
			return;
		}else{
			$.indi.ajaxSubmit({url: "${ctx}/credit/appeal/sendToNextStep.do",success:function(data){
				$("#_appId").val(data.appId);
				$("#_nextOrgId").val(data.nextOrgId);
				$.indi.submit({url:'${ctx }/activiti/queryNextNodeByView.do'});
			}});
		}
	}
	
	//上传附件
	function uploadFile(signId, fileType,fileTypeId) {
		var title = '[' + fileType + ']文件上传';
		$('#_relaTabId').val(signId);//用户操作的档案类型ID
		$('#_relaTypeId').val(fileTypeId);//系统配置的档案类型ID
		$('#_relaTable').val('CREDIT_FILE_SIGN');//关联表名
		$.indi.openPopup({
			url : '${ctx}/file/uploadFileView.do',
			parentOpen : true,
			title : title
		});
	}
		
	//关闭当前弹出框
	function close_01(){
		 $.indi.closePopup();
	}

</script>
</head>
<body class="body-modle">
	<div  class=content >
		<div class="row">
			<div class="col-md-12">
				<ul class="nav nav-tabs">
					<li class="active" data="0"><a href="javascript:void('0')">不良档案</a></li>
					<li data="1"><a href="javascript:void('0')">异议申诉</a></li>
				</ul>
			</div>
		</div>
		<div class="row">
			<form method="post" id="i-form" class="col-md-12  form-horizontal" role="form">
			<input type="hidden" id="credit_code" name="credit_code" value="${credit_code}"/>
			<input type="hidden" id="appeal_code" name="appeal_code" value="${appeal_code}"/>
			<input type="hidden" id="app_id" name="app_id" value="${appeal.app_id}"/>
			<input type="hidden" id="_appId" name="appId" value="${app.appId}"/>
			<input type="hidden" id="_nextOrgId" name="nextOrgId" value="${app.nextOrgId}"/>
			<input type="hidden" name="relaTable" id="_relaTable"> 
			<input type="hidden" name="relaTabId" id="_relaTabId"> 
			<input type="hidden" name="relaTypeId" id="_relaTypeId"> 
			<input type="hidden" id="zblx" name="zblx" value="<%=InitSysConstants.CreditQuotaKind_BL%>"/>
				<fieldset class="content">
				<div class=" col-md-12" id="_baseInfo">
					<div class="col-md-12">
						<span style="color: #72afd2">基础信息</span>
						<hr>
					</div>
					<div class="form-group">
						<label class="col-xs-2 control-label text-right">受理区局</label>
						<div class="col-xs-4">
							<input type="text" class="form-control"
								placeholder="受理	区局" id="hpbmc" name="hpbmc"   maxlength="80" value="${record.hpbmc}" />
						</div>
						<label class="col-xs-2 control-label text-right">被记分主体</label>
						<div class=" col-xs-4">
							<input type="text" class="form-control"
								placeholder="被记分主体" id="bjlx" name="bjlx"   maxlength="80" value="${cm:getCodeVal('CreditQuotaObject',record.bjlx) }" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-xs-2 control-label text-right">信息类型</label>
						<div class=" col-xs-4">
							<input type="text" class="form-control"
								placeholder="信息类型" id="bllx" name="bllx"   maxlength="80" value="${cm:getCodeVal('CreditBadRecordKind',record.bllx) }" />
						</div>
						<label class="col-xs-2 control-label text-right">信息来源</label>
						<div class=" col-xs-4">
							<input type="text" class="form-control"
								placeholder="信息来源" id="info_from" name="info_from"   maxlength="80" value="${cm:getCodeVal('CreditInfoFrom',record.info_from) }" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-xs-2 control-label text-right">涉及小区</label>
						<div class=" col-xs-10">
							<input type="text" class="form-control col-xs-10"  id="xmmc" name="xmmc"  maxlength="80" value="${record.xmmc}" />
							<input type="hidden" id="xmid" name="xmid" value="${record.xmid}"/>	
						</div>
					</div>
					<div class="form-group">
						<label class="col-xs-2 control-label text-right">物业公司</label>
						<div class="col-xs-10">
							<input type="text" class="form-control col-xs-10" id="wygsmc" name="wygsmc" maxlength="80" value="${record.wygsmc}"/>
						</div>
						<input type="hidden" name="wygsid" id="wygsid" value="${record.wygsid}" />
					</div>
					<div class="form-group">
						<label class="col-xs-2 control-label text-right">项目经理</label>
						<div class=" col-xs-10">
							<input type="text" class="form-control col-xs-10"
								placeholder="项目经理姓名" id="ryxm" name="ryxm"  maxlength="80" value="${record.ryxm}" />
							<input type="hidden" id="gsryid" name="gsryid" value="${record.gsryid}"/>		
						</div>
					</div>
					<div class="form-group">
						<label class="col-xs-2 control-label text-right">受理内容</label>
						<div class=" col-xs-10">
							<textarea type="text" class="form-control col-xs-11" 
								placeholder="不良信息内容描述" id="slnr" name="slnr" rows="5" maxlength="512">${record.slnr}</textarea>
						</div>
					</div>	
					<div class="col-md-12">
						<span style="color: #72afd2">记分指标依据</span>
						<hr>
					</div>
					<div class="col-md-12">
						<table class="table table-bordered table-striped with-check" id="tableId">
							<thead>
								<tr>
									<th width="7%" target_data="count">序号</th>
									<th width="10%" target_data="syzt" type="code" codeNo="CreditQuotaObject">适用主体</th>
									<th width="45%" target_data="jfyj">指标依据</th>
									<th width="8%" >分值</th>
									<th width="20%" >记分说明</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach items="${listInfo}" var="quota" varStatus="quotaSta">
								<tr>
									<td align="center" >${quotaSta.count }</td>
									<td align="center" >${cm:getCodeVal('CreditQuotaObject',quota.syzt) }</td>
									<td align="left" >${quota.jfyj}</td>
									<td align="center" >${quota.jlf}</td>
									<td align="center" >${quota.jfsm}</td>
								</tr>
							</c:forEach>
								<tr class="warning">
									<td colspan="5" align="right" style="padding-right: 55px;color: red;">本次扣分总值：${record.jlf}分</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="collapse col-md-12" id="_file_info">
					<div class="form-group">
						<label class="col-xs-1 control-label text-right">申诉时间</label>
						<div class=" col-xs-11">
							<input type="text" class="form-control col-xs-10"
								placeholder="申诉时间" id="ss" name="ss"  maxlength="80" value="${appeal.appeal_date} ${appeal.appeal_time}" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-xs-1 control-label text-right">申诉理由</label>
						<div class=" col-xs-11">
							<textarea type="text" class="form-control col-xs-11" 
								placeholder="异议申诉理由" id="slnr" name="appeal_reasion" rows="5" maxlength="512">${appeal.appeal_reasion}</textarea>
						</div>
					</div>
					<div class="form-group">
						<label class="col-xs-1 control-label text-right">其他说明</label>
						<div class=" col-xs-11">
							<textarea type="text" class="form-control col-xs-11" 
								placeholder="其他说明" id="appeal_remark" name="appeal_remark" rows="5" maxlength="512">${appeal.appeal_remark}</textarea>
						</div>
					</div>
					<div class="col-md-12 paddtop10">
						<span style="color: #72afd2">对应要件</span> <span style="color: red">&nbsp;&nbsp;*保存前请选中的附件资料</span>
						<hr>
					</div>
					<div class="col-md-12 paddtop10">
						<table class="table table-bordered table-striped table-paging">
							<thead>
								<tr>
									<th width="10%">签收标签</th>
									<th  align="left">要件类型</th>
									<th width="8%">操作</th>
								</tr>
							</thead>
							<tbody>
							<!-- 隐藏 -->
							<c:forEach items="${fileSigns}" var="file" varStatus="fileSta">
								<tr>
									<td align="center">
										<input type="checkbox" value="${file.signId}" name="signIds" <c:if test="${file.isSign eq 1}">checked="checked"</c:if>/>
									</td>
									<td align="left">${file.fileType}</td>
									<td align="center">
										<a href="javascript:void('0')" style="font-size: 20px;" title="上传附件" onclick="uploadFile('${file.signId}','${file.fileType }','${file.fileTypeId }')">
											<i class="icon-upload"></i>
										</a>&nbsp;&nbsp;
									</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
				</div>			
				<div class=" form-group" align="center">
					<button type="button" class="btn btn-primary" onclick="save()">
						<i class="icon-save"></i> 暂存
					</button>
					<button type="button" class="btn btn-primary" onclick="send()">
						<i class="icon-save"></i> 提交
					</button>
					<button type="button" class="btn btn-primary" onclick="close_01()">
						<i class="icon-remove"></i> 取消
					</button>
				</div>	
				</fieldset>
			</form>
		</div>
	</div>
</body>
</html>