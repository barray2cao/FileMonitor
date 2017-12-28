<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<html>
<head>
    <title>Title</title>
    <%@include file="/static/common/common.jsp" %>
    <script type="text/javascript" src="/static/js/dept.js"></script>
</head>
<body>
<%--显示数据datagrid的table组件--%>
<table id="dept_datagrid"></table>
<%--新增/更新数据的弹出框--%>
<div id="dept_dialog">
    <form id="dept_form" method="post">
        <input type="hidden" name="id">
        <table align="center" style="margin-top: 15px">
            <tr>
                <td>部门名称</td>
                <td><input name="name"/></td>
            </tr>
            <tr>
                <td>部门编码</td>
                <td><input name="sn"/></td>
            </tr>
            <tr>
                <td>部门经理</td>
                <td>
                    <input name="manager.id" class="easyui-combobox"
                           data-options="
                           valueField:'id',
                           textField:'username',
                           url:'/employee_listAll.do',
                           panelHeight:'auto'"/>
                </td>
            </tr>
            <tr>
                <td>上级部门</td>
                <td>
                    <input name="parent.id" class="easyui-combobox"
                           data-options="
                           valueField:'id',
                           textField:'name',
                           url:'/department_listAll.do',
                           panelHeight:'auto'"/>
                </td>
            </tr>
        </table>
    </form>
</div>

<%--显示数据table的toolbar组件--%>
<div id="dept_tb">
    <%--使用shiro标签控制按钮显示--%>
    <shiro:hasPermission name="dept:save">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" data-cmd="add">新增</a>
    </shiro:hasPermission>
    <shiro:hasPermission name="dept:edit">
        <a id="dept_tb_edit" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true"
           data-cmd="edit">编辑</a>
    </shiro:hasPermission>
    <a id="dept_tb_state" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true"
       data-cmd="changeState">删除</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">查询全部</a>
    <%--关键字查询--%>
    <input name="keyword"/>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" data-cmd="searchForm">查询</a>
</div>

<%--新增/更新数据弹出框的buttons组件--%>
<div id="dept_btns">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="save">保存</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancel">取消</a>
</div>

</body>
</html>
