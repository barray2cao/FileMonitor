<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<html>
<head>
    <title>Title</title>
    <%@include file="/static/common/common.jsp" %>
    <script type="text/javascript" src="/static/js/storage.js"></script>
</head>
<body>
<%--显示数据datagrid的table组件--%>
<table id="sto_datagrid"></table>

<%--显示数据table的toolbar组件--%>
<div id="sto_tb">
    <%--&lt;%&ndash;使用shiro标签控制按钮显示&ndash;%&gt;--%>

    <a class="easyui-linkbutton" iconCls="icon-tip" plain="true" data-cmd="upData">提审</a>
    关键字查询
    <input name="keyword" placeholder="请输入关键字"/>
        申请日期:<input name="minRisk" type="text" class="easyui-datebox"/>--
                <input name="maxRisk" type="text" class="easyui-datebox"/>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" data-cmd="searchForm">查询</a>
        <a class="easyui-linkbutton" iconCls="icon-reload" plain="true" data-cmd="reload">重置</a>

</div>-
</body>
</html>
