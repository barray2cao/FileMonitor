<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="/static/common/common.jsp" %>
    <script src="/static/plugins/echarts/echarts.min.js"></script>
    <script type="text/javascript" src="/static/js/chart.js"></script>
</head>
<body>
	<table id="chart_datagrid"></table>

    <div id="chart_tb">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" data-cmd="add">新增</a>
        <a id="chart_tb_edit" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true"
           data-cmd="edit">编辑</a>
    <a id="chart_tb_state" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true"
       data-cmd="changeState">删除</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">刷新</a>
    <%--关键字查询--%>
    关键字:<input name="keyword">
    开发日期:<input id="beginDate" type="text" class="easyui-datebox">---
    	   <input id="endDate" type="text" class="easyui-datebox">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" data-cmd="searchForm">查询</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-tip'" data-cmd="saleBar">生成销售图表</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-tip'" data-cmd="clientBar">生成客户图表</a>
	</div>

</body>
</html>
