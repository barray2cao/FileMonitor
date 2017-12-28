<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<html>
<head>
    <title>Title</title>
    <%@include file="/static/common/common.jsp" %>
    <script type="text/javascript" src="/static/js/carinsuranc.js"></script>
</head>
<body>
<%--显示数据datagrid的table组件--%>
<table id="c_datagrid"></table>


<%--显示数据table的toolbar组件--%>
<div id="c_tb">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">查询全部</a>
    <%--关键字查询--%>
    险种名称/介绍:<input name="keyword"/>
        投保金额:<input name="minInsure"/>--<input name="maxInsure"/>
        保险金额:<input name="minAmount"/>--<input name="maxAmount"/>
        保险时限:<input name="insuranceTime"/>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" data-cmd="searchForm">查询</a>

</div>

</body>
</html>
