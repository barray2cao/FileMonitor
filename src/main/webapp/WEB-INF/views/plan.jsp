<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<html>
<head>
    <title>Title</title>
    <%@include file="/static/common/common.jsp" %>
    <script type="text/javascript" src="/static/js/plan.js"></script>
</head>
<body>
<%--显示数据datagrid的table组件--%>
<table id="plan_datagrid"></table>
<%--新增/更新数据的弹出框--%>
<div id="plan_dialog">
    <form id="plan_form" method="post">
        <input type="hidden" name="id">
        <table align="center" style="margin-top: 15px">
            <tr>
                <td>员工选择</td>
                <td><input name="employee.id" class="easyui-combobox"
                           data-options="
                           valueField:'id',
                           textField:'realname',
                           url:'/employee_listAll.do',
                           panelHeight:'auto'"/>
                </td>
            </tr>
            <tr>
                <td>选择日期</td>
                <td>
                    <input name="taskdate" class="easyui-datebox"/>
                </td>
            </tr>
            <tr>
                <td>任务描述</td>
                <td><textarea rows="5" cols="20" name="missiontext"></textarea></td>
            </tr>
        </table>
    </form>
</div>
<div id="planPro_dialog">
    <form id="planPro_form" method="post">
        <input type="hidden" name="id">
        <table align="center" style="margin-top: 15px">
            <tr>
                <td>处理描述</td>
                <td><textarea rows="5" cols="20" name="processtext"></textarea></td>
            </tr>
        </table>
    </form>
</div>

<%--显示数据table的toolbar组件--%>
<div id="plan_tb">
    <%--使用shiro标签控制按钮显示--%>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" data-cmd="add">分配任务</a>
    <a id="plan_tb_edit" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true"
       data-cmd="edit">编辑任务</a>
    <a id="plan_tb_edit" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true"
       data-cmd="del">删除任务</a>
    <a id="plan_tb_state" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true"
       data-cmd="changeState">标记完成</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" data-cmd="editPro">添加/编辑处理描述</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">刷新</a>
    <%--关键字查询--%>
    <input name="keyword"/>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" data-cmd="searchForm">查询</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cut',plain:true" data-cmd="exportFile">导出</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-more',plain:true" data-cmd="importFile">导入</a>
</div>

<%--新增/更新数据弹出框的buttons组件--%>
<div id="plan_btns">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="save">保存</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancel">取消</a>
</div>
<div id="planPro_btns">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="savePro">保存</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancelPro">取消</a>
</div>
</body>
</html>
