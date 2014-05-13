<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath %>">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>首页</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/one-debug.css">
<link rel="stylesheet" type="text/css" href="css/skins/minimal/blue.css">
<style type="text/css">
.container {
	margin: 0 auto;
	min-width: 1000px;
	max-width: 1360px;
	padding: 15px;
}
.ui-switchable-panel {
	width: 498px;
	float: left;
}
</style>
</head>

<body>
	<div class="ui-box">
	    <div class="ui-box-head">
	        <h3 class="ui-box-head-title">添加卡类型</h3>
	    </div>
	    <div class="ui-box-container">
			<form class="ui-form" id="member-form" name="member-form" action="m/add" method="post">
				<fieldset>
					<div class="ui-box-content">
						<div class="ui-tiptext-container ui-tiptext-container-message">
						    <p class="ui-tiptext ui-tiptext-message">
						        <i class="ui-tiptext-icon iconfont" title="提示">&#xF046;</i>
						        带&nbsp;&nbsp;<span class="ui-form-required">*</span>号为必填项。
						    </p>
						</div>
					</div>
					<div class="ui-box-content">
						<div class="ui-form-item">
							<label for="name" class="ui-label"><span class="ui-form-required">*</span>名称：</label>
							<input class="ui-input" id="name" name="cardType.name" type="text"/>
						</div>
						<div class="ui-form-item">
							<label for="sex" class="ui-label"><span class="ui-form-required">*</span>类型：</label>
							<div class="ui-form-radio">
								<div class="ui-form-inline">
									<input type="radio" id="store" name="cardType.feeFlag" value="0" checked/>
									<label for="store">储值卡&nbsp;</label>
								</div>
								<div class="ui-form-inline">
									<input type="radio" id="times" name="cardType.feeFlag" value="1"/>
									<label for="times">计次卡&nbsp;</label>
								</div>
							</div>
						</div>
						<div class="ui-form-item">
							<label class="ui-label"><span class="ui-form-required">*</span>短信：</label>
							<div class="ui-form-radio">
								<div class="ui-form-inline">
									<input type="radio" id="unsend" name="cardType.smsFlag" value="0" checked/>
									<label for="unsend">不发送&nbsp;</label>
								</div>
								<div class="ui-form-inline">
									<input type="radio" id="send" name="cardType.smsFlag" value="1"/>
									<label for="send">发送&nbsp;</label>
								</div>
							</div>
						</div>
						<div class="ui-form-item">
							<label class="ui-label"><span class="ui-form-required">*</span>信息费：</label>
							<div class="ui-form-radio">
								<div class="ui-form-inline">
									<input type="radio" id="uncost" name="cardType.smsCostFlag" value="0" checked/>
									<label for="uncost">不扣除&nbsp;</label>
								</div>
								<div class="ui-form-inline">
									<input type="radio" id="cost" name="cardType.smsCostFlag" value="1"/>
									<label for="cost">扣除&nbsp;</label>
								</div>
							</div>
						</div>
						<div class="ui-form-item">
							<label class="ui-label">折扣</label>
						</div>
						<div class="ui-form-item">
							<label for="consumeDiscount" class="ui-label"><span class="ui-form-required">*</span>消费：</label>
							<input class="ui-input" id="consumeDiscount" name="cardType.consumeDiscount" value="0" type="text"/>
							<label for="goodsDiscount" class="ui-input-pre"><span class="ui-form-required">*</span>商品：</label>
							<input class="ui-input" id="goodsDiscount" name="cardType.goodsDiscount" value="0" type="text"/>
						</div>
						<div class="ui-form-item">
							<label class="ui-label">预存</label>
						</div>
						<div class="ui-form-item">
							<label for="prepCardFee" class="ui-label">储值卡金：</label>
							<input class="ui-input" id="prepCardFee" name="cardType.prepCardFee" value="0" type="text"/>
							<label for="prepPresentFee" class="ui-input-pre">储值赠送金：</label>
							<input class="ui-input" id="prepPresentFee" name="cardType.prepPresentFee" value="0" type="text"/>
						</div>
						<div class="ui-form-item">
							<label for="prepTreatFee" class="ui-label">疗程卡金：</label>
							<input class="ui-input" id="prepTreatFee" name="cardType.prepTreatFee" value="0" type="text"/>
							<label for="prepTreatPresentFee" class="ui-input-pre">疗程赠送金：</label>
							<input class="ui-input" id="prepTreatPresentFee" name="cardType.prepTreatPresentFee" value="0" type="text"/>
						</div>
						<div class="ui-form-item">
							<label for="costFee" class="ui-label">工本费：</label>
							<input class="ui-input" id="costFee" name="cardType.costFee" value="0" type="text"/>
						</div>
					</div>
				</fieldset>
				<div class="ui-box-content">
					<div class="ui-form-item">
						<div class="fn-right">
							<button type="button" id="btn-submit" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-ok-sign"></span> 保&nbsp;&nbsp;&nbsp;存</button>
						</div>
					</div>
				</div>
			</form>
	    </div>
	</div>
	
	<script type="text/javascript" src="js/sea.js"></script>
	<script type="text/javascript">
		seajs.config({
			base: 'sea-modules',
			alias : {
				'$' : 'jquery/jquery/1.10.1/jquery',
				'confirmbox' : 'arale/dialog/1.3.0/confirmbox',
				'select' : 'arale/select/0.9.9/select',
				'validator' : 'arale/validator/0.9.7/validator',
				'carousel' : 'arale/switchable/1.0.2/carousel',
				'icheck' : 'jquery/icheck/1.0.2/icheck',
				'form' : 'jquery/form/3.50.0/form'
			}
		});
		seajs.use(['$', 'select', 'validator', 'carousel', 'icheck', 'form'], function($, Select, Validator, Carousel) {
		    $(function() {
		    	
		    	$('input:radio').iCheck({
					checkboxClass: 'icheckbox_minimal-blue',
					radioClass: 'iradio_minimal-blue'
				});
		    	
		    	// Select
		    	new Select({
				    trigger: '#cardType'
				}).render();
		    	
		    	// Validation
		        var validator = new Validator({
		            element: 'form'
		        });
		    	
		        validator.addItem({
		            element: '#name',
		            required: true,
		            rule: 'minlength{min:1} maxlength{max:20}'
		        }).addItem({
		            element: '#mobile',
		            required: true,
		            rule: 'mobile minlength{min:11}'
		        }).addItem({
		            element: '#cardNo',
		            required: true
		        }).addItem({
		            element: '#cardType',
		            required: true
		        }).addItem({
		            element: '#consumeDiscount',
		            required: true,
		            rule: 'number min{min:0}'
		        }).addItem({
		            element: '#goodsDiscount',
		            required: true,
		            rule: 'number min{min:0}'
		        }).addItem({
		            element: '#password',
		            required: false,
		            rule: 'minlength{min:4}'
		        }).addItem({
		            element: '#birth',
		            required: false,
		            rule: 'date'
		        }).addItem({
		            element: '#expireDate',
		            required: false,
		            rule: 'date'
		        }).addItem({
		            element: '#costFee_cashPay',
		            required: false,
		            rule: 'number min{min:0}',
		            display: '工本费现金付'
		        }).addItem({
		            element: '#costFee_unionPay',
		            required: false,
		            rule: 'number min{min:0}',
		            display: '工本费银联付',
		            showMessage: function(message, element) {
		                // 结束日期出错后会调用这个函数。如果前面的开始日期没有出错的时候才显示自己的出错消息。
		                var startErr = $.trim(this.getExplain(element).html());
		                if (!startErr) {
		                    this.getExplain(element).html(message);
		                    this.getItem(element).addClass(this.get('itemErrorClass'));
		                }
		            },
		            hideMessage: function(message, element) {
		                // 结束日期校验通过后会调用这个函数。如果前面的开始日期没有出错的时候才清空消息。
		                var startErr = $.trim(this.getExplain(element).html());
		                if (!startErr) {
		                    this.getExplain(element).html(element.attr('data-explain') || ' ');
		                    this.getItem(element).removeClass(this.get('itemErrorClass'));
		                }
		            }
		        }).addItem({
		            element: '#recharge_cashPay',
		            required: false,
		            rule: 'number min{min:0}',
		            display: '充值现金付',
		        }).addItem({
		            element: '#recharge_unionPay',
		            required: false,
		            rule: 'number min{min:0}',
		            display: '充值银联付',
		            showMessage: function(message, element) {
		                // 结束日期出错后会调用这个函数。如果前面的开始日期没有出错的时候才显示自己的出错消息。
		                var startErr = $.trim(this.getExplain(element).html());
		                if (!startErr) {
		                    this.getExplain(element).html(message);
		                    this.getItem(element).addClass(this.get('itemErrorClass'));
		                }
		            },
		            hideMessage: function(message, element) {
		                // 结束日期校验通过后会调用这个函数。如果前面的开始日期没有出错的时候才清空消息。
		                var startErr = $.trim(this.getExplain(element).html());
		                if (!startErr) {
		                    this.getExplain(element).html(element.attr('data-explain') || ' ');
		                    this.getItem(element).removeClass(this.get('itemErrorClass'));
		                }
		            }
		        }).addItem({
		            element: '#presentFee',
		            required: false,
		            rule: 'number min{min:0}'
		        });
		    	
		    	// 轮播
		        var c = new Carousel({
			        element: '#member-form',
			        hasTriggers: false,
			        easing: 'easeOutStrong',
			        effect: 'scrollx',
			        step: 1,
			        viewSize: [498, 435],
			        circular: false,
			        autoplay: false
			    }).render();
		        
		        // 默认按钮状态
		        $('#btn-prev').hide();
        		$('#btn-next').show();
        		$('#btn-submit').hide();
        		
        		// 切换事件
        		var m_step = $('#member-step');
		        c.on('switch', function(toIndex, fromIndex) {
		        	if(toIndex === 0){
		        		$('#btn-prev').hide();
		        		$('#btn-next').show();
		        		$('#btn-submit').hide();
		        	}
		        	if(toIndex === 1){
		        		$('#btn-prev').show();
		        		$('#btn-next').show();
		        		$('#btn-submit').hide();
		        	}
					if(toIndex === 2){
						$('#btn-prev').show();
		        		$('#btn-next').hide();
		        		$('#btn-submit').show();
		        	}
		        	if(toIndex > fromIndex){
		        		m_step.find('li:eq(' + fromIndex + ')').removeClass('ui-step-active').addClass('ui-step-done');
		        		m_step.find('li:eq(' + toIndex + ')').addClass('ui-step-active');
		        	}else{
		        		m_step.find('li:eq(' + fromIndex + ')').removeClass('ui-step-active');
		        		m_step.find('li:eq(' + toIndex + ')').removeClass('ui-step-done').addClass('ui-step-active');
		        	}
		        });
		        
		        // From submit 
	            $('#btn-submit').on('click', function(){
	                $('#member-form').ajaxSubmit({ 
		                success: function(responseText, statusText, xhr, $form){
		                	if(responseText == 0){
		                		window.frameElement.trigger('close');
		                	}else if (responseText == -1){
		                		// 手机号码已存在
		                	}else if (responseText == -2){
		                		// 卡类型卡号重复
		                	}
						}
	                }); 
	            });
	            
		    });
		});
	</script>
</body>
</html>
