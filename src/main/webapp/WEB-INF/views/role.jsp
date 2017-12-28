<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="/static/common/common.jsp"%>
    <script type="text/javascript" src="/static/js/role.js"></script>
</head>
<body>
<%--显示数据datagrid的table组件--%>
<table id="role_datagrid"></table>
<%--显示数据table的toolbar组件--%>
<div id="role_tb">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" data-cmd="add">新增</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" data-cmd="edit">编辑</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true" data-cmd="removeRole">删除</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">查询全部</a>
    <%--关键字查询--%>
    <input name="keyword"/>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" data-cmd="searchForm">查询</a>
</div>
<%--新增/更新数据的弹出框--%>
<div id="role_dialog">
    <form id="role_form" method="post">
        <input type="hidden" name="id">
        <table align="center" style="margin-top: 15px">
            <tr>
                <td>编号:<input name="sn"/></td>
                <td>名称:<input name="name"/></td>
            </tr>
            <tr>
                <td>
                    <table id="allPermissions"></table>
                </td>
                <td>
                    <table id="selfPermissions"></table>
                </td>
            </tr>
        </table>
    </form>
    <%--新增/更新数据弹出框的buttons组件--%>
    <div id="role_btns">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="save">保存</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancel">取消</a>
    </div>
</div>

</body>
</html>
