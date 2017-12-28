<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<html>
<head>
    <title>Title</title>
    <%@include file="/static/common/common.jsp" %>
    <link rel='stylesheet' href='/static/plugins/fullcalendar/fullcalendar.css' />
	<script src='/static/plugins/fullcalendar/lib/jquery.min.js'></script>
	<script src='/static/plugins/fullcalendar/lib/moment.min.js'></script>
	<script src='/static/plugins/fullcalendar/fullcalendar.js'></script>
	<script src='/static/plugins/fullcalendar/locale/zh-cn.js'></script>
    <script type="text/javascript" src="/static/js/plancalendar.js"></script>
</head>
<body>
	<div id='calendar'></div>
</body>
</html>
