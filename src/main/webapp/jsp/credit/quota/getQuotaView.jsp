<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.indihx.comm.InitSysConstants"%>
<%@page import="com.indihx.credit.commons.CreditConstants"%>
<%@ include file="/jsp/comm/mate.jsp"%>
<html>
<head>
<script type="text/javascript">
	$(document).ready(function(){
		$("#hidden1").hide();
		
		//加载适用主体
		initSyzt();
		//加载记分标志
		loadJfbz();
	}); 
	//关闭当前弹出框
	function close_01(){
		 $.indi.closePopup();
	}

	function initSyzt(){
		if('${quota.syzt}'=='<%=CreditConstants.QuotaObject_WYGS%>'){
			$("#syzt2").attr("class","form-group");
			$("#syzt3").attr("class","form-group");
			$("#syzt1").attr("checked","checked");
		}else if('${quota.syzt}'=='<%=CreditConstants.QuotaObject_XMJL%>'){
			$("#syzt1").attr("class","form-group");
			$("#syzt3").attr("class","form-group");
			$("#syzt2").attr("checked","checked");
		}else if('${quota.syzt}'=='<%=CreditConstants.QuotaObject_WYGSXMJL%>'){
			$("#syzt1").attr("class","form-group");
			$("#syzt2").attr("class","form-group");
			$("#syzt3").attr("checked","checked");
		}
	}
	
	function loadJfbz(){
		if('${quota.jfbz}'=='加分'){
			$("#jfbz2").attr("class","form-group");
			$("#jfbz1").attr("checked","checked");
		}else{
			$("#jfbz1").attr("class","form-group");
			$("#jfbz2").attr("checked","checked");
		}
	}
</script>
</head>
<body class="body-modle">
	<div  class=content >
		<div class="row">
			<form method="post" id="i-form" class="form-horizontal" role="form">
			<input type="hidden" id="credit_seq" name="credit_seq" value="${quota.credit_seq}"/>
			<input type="hidden" id="status" name="status" value="${quota.status}"/>
				<fieldset class="content">
				<div class="form-group">
					<label class="col-xs-2 control-label text-right">编码</label>
					<div class=" col-xs-8">
						<input type="text" class="form-control col-xs-10"
							placeholder="指标编码" id="zbbm" name="zbbm"   maxlength="80" value="${quota.zbbm} "/>
					</div>
				</div> 
				<div class="form-group">
					<label class="col-xs-2 control-label text-right">指标内容</label>
					<div class="col-xs-8">
						<textarea type="text" class="form-control col-xs-11" 
							placeholder="请填写指标依据内容..." id="jfyj" name="jfyj" rows="5" maxlength="512">${quota.jfyj}</textarea>
						<p class="help-block"></p>	
					</div>
				</div>
				<div class="form-group">
					<label class="col-xs-2 control-label text-right">条款</label>
					<div class="col-xs-8">
						<input type="text" class="form-control"
							placeholder="第几条,如第一条，则填写大写'一'即可..." id="tseq" name="tseq"  maxlength="80" value="第${quota.tseq}条，第${quota.kseq}款"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-xs-2 control-label text-right">适用主体</label>
					<div class=" col-xs-8">
						<label class="radio">
						  <label for="">
						   <input type="radio" id="syzt1" name="syzt" value="<%=CreditConstants.QuotaObject_WYGS %>"  />物业公司
						  </label>
						 </label>
						 <label class="radio">
						  <label for="">
						   <input type="radio" id="syzt2" name="syzt" value="<%=CreditConstants.QuotaObject_XMJL %>"/>项目经理
						  </label>
						 </label>
						  <label class="radio">
						  <label for="">
						   <input type="radio" id="syzt3" name="syzt" value="<%=CreditConstants.QuotaObject_WYGSXMJL %>"/>物业公司和项目经理
						  </label>
						 </label>
					</div>
				</div>
				<div class="form-group">
					<label class="col-xs-2 control-label text-right">分值</label>
					<div class=" col-xs-8">
						<input type="number" class="form-control col-xs-10"
							placeholder="参考分值" id="ckfz" name="ckfz"   maxlength="80" value="${quota.ckfz}"/>
						<p class="help-block"></p>	
					</div>
				</div> 
				<div class="form-group">
					<label class="col-xs-2 control-label text-right">记分标志</label>
					<div class=" col-xs-8">
						<label class="radio">
						  <label for="">
						   <input type="radio" id="jfbz1" name="jfbz" value="加分" />加分
						  </label>
						 </label>
						  <label class="radio">
						  <label for="">
						   <input type="radio" id="jfbz2" name="jfbz" value="减分"  />减分
						  </label>
						 </label>	
					</div>
				</div> 
				<div class="form-group">
					<label class="col-xs-2 control-label text-right">备注</label>
					<div class=" col-xs-8">
						<textarea type="text" class="form-control col-xs-11" 
							placeholder="指标依据描述" id="bz" name="bz" rows="5" maxlength="512">${quota.bz}</textarea>
					</div>
				</div>
				</fieldset>
			</form>
		</div>
	</div>
</body>
</html>