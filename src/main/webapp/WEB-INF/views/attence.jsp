<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<html>
<head>
    <title>Title</title>
    <%@include file="/static/common/common.jsp" %>
    <script type="text/javascript" src="/static/js/attence.js"></script>
</head>
<body>
<%--显示数据datagrid的table组件--%>
<table id="att_datagrid"></table>
<%--新增/更新数据的弹出框--%>
<div id="att_dialog">
</div>

<%--显示数据table的toolbar组件--%>
<div id="att_tb">
    <%--使用shiro标签控制按钮显示--%>
    <a id="att_tb_state" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true"
       data-cmd="changeState">签到</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true" data-cmd="add">签退</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">刷新</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cut',plain:true" data-cmd="exportFile">导出</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-more',plain:true" data-cmd="importFile">导入</a>
</div>


<%--导入文件弹出框--%>
<div id="att_file" class="easyui-dialog" data-options="closed:true, title:'导入文件'">
    <form action="/attence_import.do" method="post" enctype="multipart/form-data">
        <input type="file" name="file"/><br>
        <input type="submit" value="提交"/>
    </form>
</div>
</body>
</html>
