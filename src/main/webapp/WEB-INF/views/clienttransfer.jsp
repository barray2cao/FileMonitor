<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<html>
<head>
    <title>Title</title>
    <%@include file="/static/common/common.jsp" %>
    <script type="text/javascript" src="/static/js/clienttransfer.js"></script>
</head>
<body>
<%--显示数据datagrid的table组件--%>
<table id="clienttransfer_datagrid"></table>

<%--显示数据table的toolbar组件--%>
<div id="clienttransfer_tb">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">刷新</a>
    <%--关键字查询--%>
    客户名称:<input name="keyword">
    开发日期:<input id="beginDate" type="text" class="easyui-datebox">---
    	   <input id="endDate" type="text" class="easyui-datebox">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" data-cmd="searchForm">查询</a>
</div>

</body>
</html>
