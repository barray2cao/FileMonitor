<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<html>
<head>
    <title>Title</title>
    <%@include file="/static/common/common.jsp" %>
    <script type="text/javascript" src="/static/js/underwrite/march.js"></script>
</head>
<body>
<div id="history_tb">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reloadHistory">查询全部</a>
    <input name="keyword"/>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" data-cmd="searchHistory">查询</a>
</div>
<table id="history_table"></table>
</body>
</html>
