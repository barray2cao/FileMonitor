<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro"%>
<html>
<head>
<title>越秀山车险</title>

<link rel="stylesheet" href="/static/css/flipclock.css">
<link rel="stylesheet" href="/static/css/calendar.css">
<link rel="stylesheet" href="/static/css/index.css">
<script type="text/javascript"
	src="/static/plugins/easyui/jquery.min.js"></script>
<script type="text/javascript" src="/static/js/index.js"></script>
<%@include file="/static/common/common.jsp"%>
<style type="text/css">
.border_right_none {
	border-right: none;
}
</style>

</head>
<body>
	<div id="cc" class="easyui-layout" data-options="fit:true,border:false">
		<div data-options="region:'north',border:false"
			style="height: 140px; background-color: #34445e;border-bottom: 5px solid #fb9337;display:block;" class="nav">
			<div class="n_title">
				<div class="n_bg"></div>
				<span class="n_name" style="font-size: 32px;color:#fb9337"><b>越秀山车险</b></span> <span style="font-size: 14px;color:#fff">--为五连发夹弯护航</span>
			</div>
			<iframe width="240" height="75" frameborder="0" allowtransparency="true"
		src="http://i.tianqi.com/index.php?c=code&id=12&icon=3&num=1&site=12" id="weather"></iframe>
			<div class="right">
				<div class="userinfo">
					<img src="/static/images/thumbs/avatar.png" alt="" /> <span><shiro:principal property="realname"/></span>
				</div>
				<div>
					<a href="#" class="button white medium" id="signin">上班</a>
					<a href="#" class="button white medium" id="signout">下班</a>
				</div>
			</div>
			<!--right-->
			
		</div>
		<div data-options="region:'center'"
			style="padding: 5px; background: #eeeeee;" class="content">
			<div class="vernav2 iconmenu" style="width:180px;">
    	<ul>
    		<li><a href="#" data-url="/menu.jsp"  name="emp">回到首页</a></li>
        	<li><a href="#formsub" class="editor">系统管理</a>
            	<span class="arrow"></span>
            	<ul id="formsub">
               		<li><a href="#" data-url="/employee.do"  name="emp" >员工管理</a></li>
                    <li><a href="#" data-url="/dept.do"  name="emp">部门管理</a></li>
                    <li><a href="#" data-url="/role.do"  name="emp">角色管理</a></li>
                </ul>
            </li>
            <li><a href="#gallery" class="editor">车险投保</a>
            	<span class="arrow"></span>
            	<ul id="gallery">
               		<li><a href="#" data-url="/tsTable.do"  name="emp">新增投保</a></li>
                    <li><a href="#" data-url="/storage.do"  name="emp">暂存单</a></li>
                    <li><a href="#" data-url="/carinsuranc.do"  name="emp">险种种类</a></li>
                    <li><a href="#" data-url="/safety.do"  name="emp">保险机构</a></li>
                </ul>
            </li>
            <li><a href="#tables" class="editor">核保中心</a>
            	<span class="arrow"></span>
            	<ul id="tables">
               		<li><a href="#" data-url="/before_underwrite.do"  name="emp">待核保任务</a></li>
                    <li><a href="#" data-url="/march_underwrite.do"  name="emp">核保意见</a></li>
                    <li><a href="#" data-url="/report_underwrite.do"  name="emp">已上报任务</a></li>
                    <li><a href="#" data-url="/pass_underwrite.do"  name="emp">核保通过任务</a></li>
                </ul>
            </li>
            <li><a href="#bc" class="editor">统计查询</a>
            	<span class="arrow"></span>
            	<ul id="bc">
               		<li><a href="#" data-url="/chart.do" name="emp">综合查询</a></li>
                </ul>
            </li>
            <li><a href="#client" class="editor">客户管理</a>
            	<span class="arrow"></span>
            	<ul id="client">
               		<li><a href="#" data-url="/client.do"  name="emp">潜在客户</a></li>
                    <li><a href="#" data-url="/fc.do"  name="emp">正式客户</a></li>
                    <li><a href="#" data-url="/dp.do"  name="emp">客户正式计划</a></li>
                    <li><a href="#" data-url="/rp.do"  name="emp">资源池</a></li>
                    <li><a href="#" data-url="/clienttransfer.do"  name="emp">客户移交记录</a></li>
                </ul>
            </li>
            <li><a href="#plan" class="editor">计划管理</a>
            	<span class="arrow"></span>
            	<ul id="plan">
               		<li><a href="#" data-url="/attence.do"  name="emp">考勤管理</a></li>
                    <li><a href="#" data-url="/plan.do"  name="emp">今日计划</a></li>
                    <li><a href="#" data-url="/payroll.do"  name="emp">工资管理</a></li>
                    <li><a href="#" data-url="/plan_calendar.do"  name="emp">行程计划</a></li>
                </ul>
            </li>
        </ul>
        <a class="togglemenu"></a>
        <br /><br />
        </div>
		<!--leftmenu-->
		<div>
		 <iframe src="/menu.jsp" id="iframepage" frameborder="0" marginheight="0" marginwidth="0">
		 	<div class="abc" style="float:right;width:1160px;">
					<div class="i_left">
						<div class="clock" style="margin: 2em;"></div>
						<div id="calendar" class="calendar"></div>
					</div>
					<div class="i_right">
						<div class="notice">
							<h1 style="text-align: center; padding-top:10px;color:#666">公告</h1>
							<p style="padding:10px 20px; text-indent:24px;line-height:32px;font-size:14px;color:#fb9337">
								历史由来:
世界上最早的一份汽车保险出现在1898年的美国。美国的旅行者保险有限公司在1898年给纽约布法罗的杜鲁门马丁上了第一份汽车保险。马丁非常担心自己的爱车会被马冲撞。美国全国只有4000多辆汽车，而马的数量却达到了2000万匹，马车仍然是主要的交通工具。在100多年之后，美国有2.2亿辆汽车，而马的数量已经减少到200万匹。一个多世纪前还被视为新鲜事物的汽车保险已经成为再平常不过的事情。
							</p>
					
					</div>
				</div>
			</div>
			 </iframe>
		</div>
	</div>
		
				
			
    </div>
		<div class="userinfodrop">
					<div class="avatar">
						<a href=""><img src="/static/images/thumbs/avatarbig.png" alt="" /></a>
					</div>
					<!--avatar-->
					<div class="userdata">
						<h4><shiro:principal property="username"/></h4>
						<span class="email"><shiro:principal property="email"/></span>
						<ul>
							<li>&nbsp;真实姓名：<span><shiro:principal property="realname"/></span></li>
							<li>&nbsp;所属部门：<span>研发部</span></li>
							<li>&nbsp;<span>导入数据</span></li>
							<li>&nbsp;<span>导出数据</span></li>
							<li><a href="/logout">注销</a></li>
						</ul>
					</div>
					<!--userdata-->
				</div>
</body>
<script type="text/javascript">
	var clock;
	$(document).ready(function() {
		clock = $('.clock').FlipClock({
			clockFace : 'TwentyFourHourClock'
		});
		
		function openPage(a) {
	        $("iframe").attr("src", $(a).data("url"));
	    }

		$("[name='emp']").click(function(){
			$("#iframepage").attr("src", $(this).data("url"));
		})
	});
</script>
<script type="text/javascript" src="/static/js/flipclock.js"></script>
<script type="text/javascript" src="/static/js/calendar.js"></script>
</html>
