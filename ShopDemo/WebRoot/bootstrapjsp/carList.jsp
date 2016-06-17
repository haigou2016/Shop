<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Insert title here</title>
		<link
			href="${pageContext.request.contextPath }/bootstrap-3.3.5/dist/css/bootstrap.min.css"
			rel="stylesheet">
		<script src="${pageContext.request.contextPath }/js/jquery-1.8.3.js">
</script>
		<script
			src="${pageContext.request.contextPath }/bootstrap-3.3.5/dist/js/bootstrap.min.js">
</script>
 <style type="text/css">
    .table th, .table td{
	text-align:center;
    }
 </style>
	</head>
	<body>
		<table class="table table-bordered" id="QueryTable">
			<tbody>
				<tr style="text-align: center;">
					<td class="query_heading_l">
						<div class="winhead">
							<h4>
								<span class="label label-primary">查询条件</span>
							</h4>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<table align="center" border="0" cellpadding="2" cellspacing="0"
							width="98%">
							<tbody>
								<tr>
									<td class="label_td" nowrap="">
										<h4>
											<span class="label label-default">牌号：</span>
										</h4>
									</td>
									<td>
										<div class="input-group input-group-sm">
											<input value="" name="auto_brand" type="text"
												class="form-control input-sm">
										</div>
									</td>
									<td class="label_td" nowrap="">
										<h4>
											<span class="label label-default">车型：</span>
										</h4>
									</td>
									<td>
										<select class="form-control input-sm" name="model_id"
											style="width: 160px">
											<option value="">
												请选择...
											</option>
											<option oil_litre="0" value="RA_143891331544869">
												2013年款福特嘉年华1.5L自动型
											</option>
											<option oil_litre="0" value="RA_1438912222709914">
												2014款迈锐宝自动豪华款
											</option>
											<option oil_litre="75" value="RA_4222360766203729179010">
												奥迪A3
											</option>
											<option oil_litre="75" value="RA_4222360585648156503493">
												奥迪A4L
											</option>
											<option oil_litre="75" value="RA_4222359966435191605848">
												奥迪A6L
											</option>
											<option oil_litre="75" value="RA_4222357853009265296677">
												奥迪A8L
											</option>
											<option oil_litre="75" value="RA_4222359916666678523454">
												奥迪Q3
											</option>
											<option oil_litre="75" value="RA_4222357400462964007593">
												奥迪Q5
											</option>
											<option oil_litre="75" value="RA_4222343217592590171148">
												奥迪Q7
											</option>
											<option oil_litre="75" value="RA_4222359218755210969906">
												宝骏730
											</option>
											<option oil_litre="0" value="RA_1438916635526881">
												北京现代胜达2.4L智能型
											</option>
											<option oil_litre="0" value="RA_4222358331018528949572">
												北京现代悦动
											</option>
											<option oil_litre="0" value="RA_4222468810185192960284">
												本田CRV
											</option>
											<option oil_litre="0" value="RA_4222464940972229382659">
												本田雅阁9
											</option>
											<option oil_litre="55" value="RA_1411010798990876">
												标致3081.6自动优尚
											</option>
											<option oil_litre="75" value="RA_4222844796296340502746">
												标致508
											</option>
											<option oil_litre="77" value="RA_4189747010416677687185">
												别克GL8 2014款自动经典
											</option>
											<option oil_litre="0" value="RA_1439019914295200">
												别克GL8豪华行政
											</option>
											<option oil_litre="75" value="RA_422236087567427022364">
												别克昂科拉
											</option>
											<option oil_litre="0" value="RA_143892781627057">
												别克昂科威
											</option>
											<option oil_litre="0" value="RA_4222349200231489324969">
												别克君威
											</option>
											<option oil_litre="0" value="RA_1439021119367916">
												别克君越2.0T
											</option>
											<option oil_litre="0" value="RA_4187467418981480375756">
												别克君越2.4L领先舒适
											</option>
											<option oil_litre="0" value="RA_1438916403836810">
												别克凯越
											</option>
											<option oil_litre="0" value="RA_4222174572916671699161">
												别克英朗
											</option>
											<option oil_litre="75" value="RA_4222361457175939386934">
												长安CS35
											</option>
											<option oil_litre="75" value="RA_4222356962962966601578">
												长安CS75
											</option>
											<option oil_litre="0" value="RA_1438929478771265">
												长安致尚XT
											</option>
											<option oil_litre="75" value="RA_4222359281259636190883">
												长安致尚XT手动
											</option>
											<option oil_litre="0" value="RA_1438915073329364">
												长城风骏5
											</option>
											<option oil_litre="75" value="RA_4222470432870374355546">
												长城哈弗H5
											</option>
											<option oil_litre="75" value="RA_4222361428240744113295">
												长城哈弗H9
											</option>
											<option oil_litre="0" value="RA_1438930168492648">
												传祺GA3
											</option>
											<option oil_litre="0" value="RA_4187467695601859351503">
												大众高尔夫
											</option>
											<option oil_litre="0" value="RA_1438928814837887">
												大众朗逸
											</option>
											<option oil_litre="70" value="RA_4187467418981480390917">
												大众帕萨特1.8T 自动
											</option>
											<option oil_litre="0" value="RA_1439020188209256">
												大众帕萨特2.0T
											</option>
											<option oil_litre="0" value="RA_1439021292699895">
												大众桑塔拉
											</option>
											<option oil_litre="55" value="RA_4187467695601859398265">
												大众速腾1.6自动
											</option>
											<option oil_litre="75" value="RA_4194968812545501638147">
												大众途观
											</option>
											<option oil_litre="0" value="RA_4187467695601859398660">
												大众新宝来
											</option>
											<option oil_litre="0" value="RA_1439019617058702">
												东风风行菱智
											</option>
											<option oil_litre="0" value="RA_4222465103009269828765">
												丰田汉兰达
											</option>
											<option oil_litre="0" value="RA_4225839479166670394841">
												丰田凯美瑞
											</option>
											<option oil_litre="45" value="RA_1464314579854287">
												丰田雷凌
											</option>
											<option oil_litre="55" value="RA_1416535927229984">
												福特福克斯
											</option>
											<option oil_litre="0" value="RA_4187467695601859398475">
												福特嘉年华
											</option>
											<option oil_litre="0" value="RA_1439023931632316">
												福特新蒙迪欧2.0L
											</option>
											<option oil_litre="60" value="RA_1413163804151880">
												福特新蒙迪欧鲨鱼嘴1.5T
											</option>
											<option oil_litre="0" value="RA_1438929969229460">
												福特翼博
											</option>
											<option oil_litre="0" value="RA_1439022341343906">
												福特翼虎
											</option>
											<option oil_litre="0" value="RA_4223757090277786832604">
												福田蒙派克S
											</option>
											<option oil_litre="0" value="RA_1438918041495883">
												吉利帝豪2013款2.0L自动尊贵型
											</option>
											<option oil_litre="0" value="RA_1459994240413792">
												吉利康迪电动车
											</option>
											<option oil_litre="0" value="RA_1457688043784506">
												吉利康迪电动车K11
											</option>
											<option oil_litre="0" value="RA_1439017974526348">
												铃木天语sx4
											</option>
											<option oil_litre="0" value="RA_4187467695601859382548">
												迈腾1.8T手自一体
											</option>
											<option oil_litre="0" value="RA_1409645950086448">
												全新捷达1.4手动
											</option>
											<option oil_litre="0" value="RA_4186654600694445070918">
												全新捷达1.6自动
											</option>
											<option oil_litre="0" value="RA_1438929019936143">
												三菱劲畅
											</option>
											<option oil_litre="0" value="RA_1438914170163123">
												上海汽车荣威550 1.8L自动智选版
											</option>
											<option oil_litre="75" value="RA_1411523945975632">
												上汽大通豪华商务7座G10 2.0T自动
											</option>
											<option oil_litre="0" value="RA_1439022568548919">
												斯柯达速派
											</option>
											<option oil_litre="0" value="RA_1438928188161806">
												沃尔沃 S60L
											</option>
											<option oil_litre="0" value="RA_1438927394984534">
												五菱宏光
											</option>
											<option oil_litre="0" value="RA_4187466826388898695316">
												雪佛兰科鲁兹
											</option>
										</select>
										<input name="auto_model" value="2013年款福特嘉年华1.5L自动型"
											type="hidden">

									</td>
									<td class="label_td" nowrap="">
										<h4>
											<span class="label label-default">购买日期：</span>
										</h4>
									</td>
									<td>
										<div class="input-group input-group-sm">
											<input name="buy_date" value="" type="text"
												class="form-control input-sm">
										</div>
									</td>
									<td class="label_td" nowrap="">
										<h4>
											<span class="label label-default">状态：</span>
										</h4>
									</td>
									<td>
										<select class="form-control input-sm" name="auto_status"
											style="width: 100px">
											<option value="">
												请选择...
											</option>
											<option value="0">
												在库待租
											</option>
											<option value="1">
												已被预订
											</option>
											<option value="2">
												已经出租
											</option>
											<option value="3">
												维修/保养
											</option>
										</select>
									</td>
									<td class="label_td" nowrap="" style="width: 120px">
										<h4>
											<span class="label label-default">所属门店：</span>
										</h4>
									</td>
									<td>
										<div class="input-group input-group-sm">
											<input class="form-control input-sm" name="department_name"
												value="" type="text">
										</div>
										<input name="belong_shop" value="" type="hidden">
									</td>
								</tr>
								<tr align="center">
									<td colspan="12" style="padding-right: 38px" align="center">
										<div class="btn-group btn-group-sm">
											<button type="button" class="btn btn-default">
												查询
											</button>
										</div>
										<div class="btn-group btn-group-sm">
											<button type="button" class="btn btn-default">
												重置
											</button>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</td>
				</tr>
			</tbody>
		</table>
		<br>
		<table class="table-bordered">
			<tbody>
				<tr>
				    <ul class="nav nav-pills nav-justified">
					   <li class="active"><a href="#">全部车辆列表</a></li>
					   <li><a href="#">近期还贷</a></li>
					   <li><a href="#">近期续保</a></li>
					   <li><a href="#">近期年检</a></li>
					   <li><a href="#">近期周期保养</a></li>
					   <li><a href="#">近期阶段保养</a></li>
					   <li><a href="#">维修保养中</a></li>
					   <li><a href="#">已售报废车辆</a></li>
					</ul>
				</tr>
			</tbody>
		</table>

		<table class="table table-bordered table-hover table-condensed  text-center" >
		    <thead align="center">
		     <tr>
		      <th>车辆牌号</th>
		      <th>车辆型号</th>
		      <th>车辆颜色</th>
		      <th>购买日期</th>
		      <th>还贷信息</th>
		      <th>年检日期</th>
		      <th>续保日期</th>
		      <th>周期保养日期</th>
		      <th>当前公里</th>
		      <th>周期保养剩余</th>
		     </tr>
		    </thead>
			<tbody>
				<tr onmouseout="mOut(this);" onmouseover="mOvr(this);">
					<td class="date_table"
						onclick="ShowAutoCheckInfo(&quot;RA_146431497972118&quot;);"
						nowrap="">
						<span style="text-decoration: underline;">渝DH3337</span>
						<div style="color: #CC0000">
							[交运租赁]
						</div>
					</td>
					<td class="date_table"
						onclick="ModifyRecord(&quot;RA_146431497972118&quot;);" nowrap="">
						丰田雷凌&nbsp;
					</td>
					<td class="date_table"
						onclick="ModifyRecord(&quot;RA_146431497972118&quot;);" nowrap="">
						白色&nbsp;
					</td>
					<td class="date_table"
						onclick="ModifyRecord(&quot;RA_146431497972118&quot;);" nowrap="">
						2016-5-18
					</td>
					<td
					</td>
					<td
					</td>
					<td
						style="border: solid; padding-top: 1px; border-width: 0px 1px 1px 1px; border-color: #FFFFFF #98AAB1 #98AAB1 #FFFFFF;"
						onclick="ModifyRecord(&quot;RA_146431497972118&quot;);">
					</td>
					<td
					</td>
					<td class="date_table" style="text-align: right"
						onclick="ModifyRecord(&quot;RA_146431497972118&quot;);" nowrap="">
						0公里&nbsp;
					</td>
					<td
					</td>
				</tr>
				<tr onmouseout="mOut(this);" onmouseover="mOvr(this);">
					<td class="date_table"
						onclick="ShowAutoCheckInfo(&quot;RA_1464315198204508&quot;);"
						nowrap="">
						<span style="text-decoration: underline;">渝DH9311</span>
						<div style="color: #CC0000">
							[交运租赁]
						</div>
					</td>
					<td class="date_table"
						onclick="ModifyRecord(&quot;RA_1464315198204508&quot;);" nowrap="">
						丰田雷凌&nbsp;
					</td>
					<td class="date_table"
						onclick="ModifyRecord(&quot;RA_1464315198204508&quot;);" nowrap="">
						白色&nbsp;
					</td>
					<td class="date_table"
						onclick="ModifyRecord(&quot;RA_1464315198204508&quot;);" nowrap="">
						2016-5-18
					</td>
					<td
					</td>
					<td
					</td>
					<td
						style="border: solid; padding-top: 1px; border-width: 0px 1px 1px 1px; border-color: #FFFFFF #98AAB1 #98AAB1 #FFFFFF;"
						onclick="ModifyRecord(&quot;RA_1464315198204508&quot;);">
					</td>
					<td
						style="border: solid; padding-top: 1px; border-width: 0px 1px 1px 1px; border-color: #FFFFFF #98AAB1 #98AAB1 #FFFFFF;"
						onclick="ModifyRecord(&quot;RA_1464315198204508&quot;);">
					</td>
					<td class="date_table" style="text-align: right"
						onclick="ModifyRecord(&quot;RA_1464315198204508&quot;);" nowrap="">
						100公里&nbsp;
					</td>
					<td
					</td>
					
				</tr>
				<tr onmouseout="mOut(this);" onmouseover="mOvr(this);">
					<td class="date_table"
						onclick="ShowAutoCheckInfo(&quot;RA_146468119378168&quot;);"
						nowrap="">
						<span style="text-decoration: underline;">渝DF9953</span>
						<div style="color: #CC0000">
							[交运租赁]
						</div>
					</td>
					<td class="date_table"
						onclick="ModifyRecord(&quot;RA_146468119378168&quot;);" nowrap="">
						丰田雷凌&nbsp;
					</td>
					<td class="date_table"
						onclick="ModifyRecord(&quot;RA_146468119378168&quot;);" nowrap="">
						白色&nbsp;
					</td>
					<td class="date_table"
						onclick="ModifyRecord(&quot;RA_146468119378168&quot;);" nowrap="">
						2016-5-6
					</td>
					<td
					</td>
					<td
						style="border: solid; padding-top: 1px; border-width: 0px 1px 1px 1px; border-color: #FFFFFF #98AAB1 #98AAB1 #FFFFFF;"
						onclick="ModifyRecord(&quot;RA_146468119378168&quot;);">
					</td>
					<td
						style="border: solid; padding-top: 1px; border-width: 0px 1px 1px 1px; border-color: #FFFFFF #98AAB1 #98AAB1 #FFFFFF;"
						onclick="ModifyRecord(&quot;RA_146468119378168&quot;);">
					</td>
					<td
						style="border: solid; padding-top: 1px; border-width: 0px 1px 1px 1px; border-color: #FFFFFF #98AAB1 #98AAB1 #FFFFFF;"
						onclick="ModifyRecord(&quot;RA_146468119378168&quot;);">
					</td>
					<td class="date_table" style="text-align: right"
						onclick="ModifyRecord(&quot;RA_146468119378168&quot;);" nowrap="">
						66公里&nbsp;
					</td>
					<td
						style="border: solid; padding-top: 1px; border-width: 0px 1px 1px 1px; border-color: #FFFFFF #98AAB1 #98AAB1 #FFFFFF;"
						onclick="ModifyRecord(&quot;RA_146468119378168&quot;);">
					</td>
					
				</tr>
				<tr onmouseout="mOut(this);" onmouseover="mOvr(this);">
					<td class="date_table"
						onclick="ShowAutoCheckInfo(&quot;RA_1438848740157193&quot;);"
						nowrap="">
						<span style="text-decoration: underline;">渝B61V75</span>
						<div style="color: #CC0000">
							[滴滴]
						</div>
					</td>
					<td class="date_table"
						onclick="ModifyRecord(&quot;RA_1438848740157193&quot;);" nowrap="">
						别克GL8 2014款自动经典&nbsp;
					</td>
					<td class="date_table"
						onclick="ModifyRecord(&quot;RA_1438848740157193&quot;);" nowrap="">
						棕色&nbsp;
					</td>
					<td class="date_table"
						onclick="ModifyRecord(&quot;RA_1438848740157193&quot;);" nowrap="">
						2015-12-31
					</td>
					<td
						style="border: solid; padding-top: 1px; border-width: 0px 1px 1px 1px; border-color: #FFFFFF #98AAB1 #98AAB1 #FFFFFF;"
						onclick="ModifyRecord(&quot;RA_1438848740157193&quot;);">
					</td>
					<td
						style="border: solid; padding-top: 1px; border-width: 0px 1px 1px 1px; border-color: #FFFFFF #98AAB1 #98AAB1 #FFFFFF;"
						onclick="ModifyRecord(&quot;RA_1438848740157193&quot;);">
						<table style="border: 0px solid #006600" border="0"
							cellpadding="0" cellspacing="0" height="23" width="100%">
							<tbody>
								<tr>
									<td >
										<table border="0" cellpadding="0" cellspacing="0"
											height="100%" width="100%">
											<tbody>
												<tr>
													<td align="right" background="images/p_red.gif"
														width="121%"></td>
													<td>
														<img src="images/spacer.gif" height="1" width="1">
													</td>
												</tr>
											</tbody>
										</table>
										<div id="labLayer3"
											style="position: relative; left: 2px; top: -19px; width: 100%; height: 100%; z-index: 10; overflow: hidden; filter: alpha(opacity =   90);">
											<div nowrap="" align="right">
												2015-12-31&nbsp;/&nbsp;-158天&nbsp;
											</div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</td>
					<td
						style="border: solid; padding-top: 1px; border-width: 0px 1px 1px 1px; border-color: #FFFFFF #98AAB1 #98AAB1 #FFFFFF;"
						onclick="ModifyRecord(&quot;RA_1438848740157193&quot;);">
						<table cellpadding="0" cellspacing="0" width="100%">
							<tbody>
								<tr>
									<td>
										<table style="border: 0px solid #006600" border="0"
											cellpadding="0" cellspacing="0" height="23" width="100%">
											<tbody>
												<tr>
													<td>
														<table border="0" cellpadding="0" cellspacing="0"
															height="100%" width="100%">
															<tbody>
																<tr>
																	<td align="right" background="images/p_red.gif"
																		width="147%"></td>
																	<td>
																		<img src="images/spacer.gif" height="1" width="1">
																	</td>
																</tr>
															</tbody>
														</table>
														<div id="labLayer3"
															style="position: relative; left: 2px; top: -19px; width: 100%; height: 100%; z-index: 10; overflow: hidden; filter: alpha(opacity =   90);">
															<div nowrap="" align="right">
																2015-12-17&nbsp;/&nbsp;-172天&nbsp;
															</div>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</td>
									<td width="50%">
										<table style="border: 0px solid #006600" border="0"
											cellpadding="0" cellspacing="0" height="23" width="100%">
											<tbody>
												<tr>
													<td>
														<table border="0" cellpadding="0" cellspacing="0"
															height="100%" width="100%">
															<tbody>
																<tr>
																	<td align="right" background="images/p_green.gif"
																		width="46%"></td>
																	<td>
																		<img src="images/spacer.gif" height="1" width="1">
																	</td>
																</tr>
															</tbody>
														</table>
														<div id="labLayer3"
															style="position: relative; left: 2px; top: -19px; width: 100%; height: 100%; z-index: 10; overflow: hidden; filter: alpha(opacity =   90);">
															<div nowrap="" align="right">
																2016-12-17&nbsp;/&nbsp;194天&nbsp;
															</div>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</td>
								</tr>
							</tbody>
						</table>
					</td>
					<td
						style="border: solid; padding-top: 1px; border-width: 0px 1px 1px 1px; border-color: #FFFFFF #98AAB1 #98AAB1 #FFFFFF;"
						onclick="ModifyRecord(&quot;RA_1438848740157193&quot;);">
					</td>
					<td class="date_table" style="text-align: right"
						onclick="ModifyRecord(&quot;RA_1438848740157193&quot;);" nowrap="">
						0公里&nbsp;
					</td>
					<td
						style="border: solid; padding-top: 1px; border-width: 0px 1px 1px 1px; border-color: #FFFFFF #98AAB1 #98AAB1 #FFFFFF;"
						onclick="ModifyRecord(&quot;RA_1438848740157193&quot;);">
					</td>
					
				</tr>
				<tr onmouseout="mOut(this);" onmouseover="mOvr(this);">
					<td class="date_table"
						onclick="ShowAutoCheckInfo(&quot;RA_1417070845069512&quot;);"
						nowrap="">
						<span style="text-decoration: underline;">渝B98N05</span>
						<div style="color: #CC0000">
							[大公馆门店]
						</div>
					</td>
					<td class="date_table"
						onclick="ModifyRecord(&quot;RA_1417070845069512&quot;);" nowrap="">
						福特福克斯&nbsp;
					</td>
					<td class="date_table"
						onclick="ModifyRecord(&quot;RA_1417070845069512&quot;);" nowrap="">
						白色&nbsp;
					</td>
					<td class="date_table"
						onclick="ModifyRecord(&quot;RA_1417070845069512&quot;);" nowrap="">
						2015-11-21
					</td>
					<td
						style="border: solid; padding-top: 1px; border-width: 0px 1px 1px 1px; border-color: #FFFFFF #98AAB1 #98AAB1 #FFFFFF;"
						onclick="ModifyRecord(&quot;RA_1417070845069512&quot;);">
					</td>
					<td
						style="border: solid; padding-top: 1px; border-width: 0px 1px 1px 1px; border-color: #FFFFFF #98AAB1 #98AAB1 #FFFFFF;"
						onclick="ModifyRecord(&quot;RA_1417070845069512&quot;);">
						<table style="border: 0px solid #006600" border="0"
							cellpadding="0" cellspacing="0" height="23" width="100%">
							<tbody>
								<tr>
									<td>
										<table border="0" cellpadding="0" cellspacing="0"
											height="100%" width="100%">
											<tbody>
												<tr>
													<td align="right" background="images/p_red.gif"
														width="127%"></td>
													<td>
														<img src="images/spacer.gif" height="1" width="1">
													</td>
												</tr>
											</tbody>
										</table>
										<div id="labLayer3"
											style="position: relative; left: 2px; top: -19px; width: 100%; height: 100%; z-index: 10; overflow: hidden; filter: alpha(opacity =   90);">
											<div nowrap="" align="right">
												2015-11-21&nbsp;/&nbsp;-198天&nbsp;
											</div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</td>
					<td
						style="border: solid; padding-top: 1px; border-width: 0px 1px 1px 1px; border-color: #FFFFFF #98AAB1 #98AAB1 #FFFFFF;"
						onclick="ModifyRecord(&quot;RA_1417070845069512&quot;);">
						<table cellpadding="0" cellspacing="0" width="100%">
							<tbody>
								<tr>
									<td>
										<table style="border: 0px solid #006600" border="0"
											cellpadding="0" cellspacing="0" height="23" width="100%">
											<tbody>
												<tr>
													<td>
														<table border="0" cellpadding="0" cellspacing="0"
															height="100%" width="100%">
															<tbody>
																<tr>
																	<td align="right" background="images/p_red.gif"
																		width="156%"></td>
																	<td>
																		<img src="images/spacer.gif" height="1" width="1">
																	</td>
																</tr>
															</tbody>
														</table>
														<div id="labLayer3"
															style="position: relative; left: 2px; top: -19px; width: 100%; height: 100%; z-index: 10; overflow: hidden; filter: alpha(opacity =   90);">
															<div nowrap="" align="right">
																2015-11-13&nbsp;/&nbsp;-206天&nbsp;
															</div>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</td>
									<td width="50%">
										<table style="border: 0px solid #006600" border="0"
											cellpadding="0" cellspacing="0" height="23" width="100%">
											<tbody>
												<tr>
													<td>
														<table border="0" cellpadding="0" cellspacing="0"
															height="100%" width="100%">
															<tbody>
																<tr>
																	<td align="right" background="images/p_yellow.gif"
																		width="56%"></td>
																	<td>
																		<img src="images/spacer.gif" height="1" width="1">
																	</td>
																</tr>
															</tbody>
														</table>
														<div id="labLayer3"
															style="position: relative; left: 2px; top: -19px; width: 100%; height: 100%; z-index: 10; overflow: hidden; filter: alpha(opacity =   90);">
															<div nowrap="" align="right">
																2016-11-13&nbsp;/&nbsp;160天&nbsp;
															</div>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</td>
								</tr>
							</tbody>
						</table>
					</td>
					<td
						style="border: solid; padding-top: 1px; border-width: 0px 1px 1px 1px; border-color: #FFFFFF #98AAB1 #98AAB1 #FFFFFF;"
						onclick="ModifyRecord(&quot;RA_1417070845069512&quot;);">
						<table style="border: 0px solid #006600" border="0"
							cellpadding="0" cellspacing="0" height="23" width="100%">
							<tbody>
								<tr>
									<td>
										<table border="0" cellpadding="0" cellspacing="0"
											height="100%" width="100%">
											<tbody>
												<tr>
													<td align="right" background="images/p_red.gif"
														width="548%"></td>
													<td>
														<img src="images/spacer.gif" height="1" width="1">
													</td>
												</tr>
											</tbody>
										</table>
										<div id="labLayer3"
											style="position: relative; left: 2px; top: -19px; width: 100%; height: 100%; z-index: 10; overflow: hidden; filter: alpha(opacity =   90);">
											<div nowrap="" align="right">
												2015-4-30&nbsp;&nbsp;/&nbsp;-403天&nbsp;
											</div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</td>
					<td class="date_table" style="text-align: right"
						onclick="ModifyRecord(&quot;RA_1417070845069512&quot;);" nowrap="">
						37274公里&nbsp;
					</td>
					<td
						style="border: solid; padding-top: 1px; border-width: 0px 1px 1px 1px; border-color: #FFFFFF #98AAB1 #98AAB1 #FFFFFF;"
						onclick="ModifyRecord(&quot;RA_1417070845069512&quot;);">
						<table style="border: 0px solid #006600" border="0"
							cellpadding="0" cellspacing="0" height="23" width="100%">
							<tbody>
								<tr>
									<td>
										<table border="0" cellpadding="0" cellspacing="0"
											height="100%" width="100%">
											<tbody>
												<tr>
													<td align="right" background="images/p_red.gif"
														width="595%"></td>
													<td>
														<img src="images/spacer.gif" height="1" width="1">
													</td>
												</tr>
											</tbody>
										</table>
										<div id="labLayer3"
											style="position: relative; left: 2px; top: -19px; width: 100%; height: 100%; z-index: 10; overflow: hidden; filter: alpha(opacity =   90);">
											<div nowrap="" align="right">
												-24774&nbsp;公里&nbsp;
											</div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</td>
				
				</tr>
				<input name="event_name" value="" type="hidden">
				<input name="strTempPKey" value="" type="hidden">
				<input name="intPageNo" value="1" type="hidden">
				<input name="strOrderField" value="" type="hidden">
				<input name="strDirection" value="desc" type="hidden">
				<input name="intFieldCount" value="14" type="hidden">
				<input name="intFieldIndex" value="3" type="hidden">
				<input name="strQueryCase" value="" type="hidden">
				<input name="pModuleId" value="2.1" type="hidden">
				<input name="args" value="" type="hidden">

			</tbody>
		</table>
	</body>
</html>