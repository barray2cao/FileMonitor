<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<html>
<head>
    <title>资源池</title>
    <%@include file="/static/common/common.jsp" %>
    <script type="text/javascript" src="/static/js/ResourcePool.js"></script>
</head>
<body>
<%--显示数据datagrid的table组件--%>
<table id="rp_datagrid"></table>

<%--显示数据table的toolbar组件--%>
<div id="rp_tb">
    <%--使用shiro标签控制按钮显示--%>
    <a id="rp_tb_state" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true"
       data-cmd="changeState">获取此客户</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">刷新</a>
    关键字查询:
    <input name="keyword" style="width: 100px"/>
        录入时间:
        <input name="beginDate" class="easyui-datebox beginDate" style="width: 100px"/>--
        <input name="endDate" class="easyui-datebox endDate" style="width: 100px"/>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" data-cmd="searchForm">查询</a>
</div>

<%--导入文件弹出框--%>
<div id="rp_file" class="easyui-dialog" data-options="closed:true, title:'导入文件'">
    <form action="/rp_import.do" method="post" enctype="multipart/form-data">
        <input type="file" name="file"/><br>
        <input type="submit" value="提交"/>
    </form>
</div>
</body>
</html>
