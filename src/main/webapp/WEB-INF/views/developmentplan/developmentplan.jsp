<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<html>
<head>
    <title>Title</title>
    <%@include file="/static/common/common.jsp" %>
    <script type="text/javascript" src="/static/js/developmentplan.js"></script>
</head>
<body>
<%--显示数据datagrid的table组件--%>
<table id="developmentplan_datagrid"></table>
<%--新增/更新数据的弹出框--%>
<div id="developmentplan_dialog">
    <form id="developmentplan_form" method="post">
        <input type="hidden" name="id">
        <h2 align="center">客户开发计划</h2>
        <table align="center" style="margin-top: 15px">
            <tr>
                <td>客户选择:</td>
                <td><input id="clientGrid" name="client.id"/></td>
                <td>计划主题:</td>
                <td><input name="subject"/></td>
            </tr>
            <tr>
                <td>计划时间:</td>
                <td><input type="text" name="plantime" class="easyui-datebox"></td>
                <td align="center">备注:</td>
                <td><input name="remark"></td>
            </tr>
            <tr id="effectTr">
                <td>跟进效果:</td>
                <td>
                	<select id="effect" class="easyui-combobox" name="effect" style="width:50px;">
					    <option value="-1">差</option>
					    <option value="0">中</option>
					    <option value="1">优</option>
					</select>
                </td>
            </tr>
            <tr align="center">
            	<td colspan="4">计划内容</td>
            </tr>
            <tr>
            	<td colspan="8">
            		<textarea name="content" style="width:420px;height:100px;"></textarea>
            	</td>
            </tr>
        </table>
    </form>
</div>

<%--显示数据table的toolbar组件--%>
<div id="developmentplan_tb">
    <%--使用shiro标签控制按钮显示--%>
    <shiro:hasPermission name="developmentplan:save">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" data-cmd="add">新增</a>
    </shiro:hasPermission>
    <shiro:hasPermission name="developmentplan:edit">
        <a id="developmentplan_tb_edit" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true"
           data-cmd="edit">编辑</a>
    </shiro:hasPermission>
    <a id="developmentplan_tb_state" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true"
       data-cmd="changeState">删除</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">刷新</a><br>
    <%--关键字查询--%>
    关键字:<input name="keyword">
    开发日期:<input id="beginDate" type="text" class="easyui-datebox">---
    	   <input id="endDate" type="text" class="easyui-datebox">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" data-cmd="searchForm">查询</a>
</div>

<%--新增/更新数据弹出框的buttons组件--%>
<div id="developmentplan_btns">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="save">保存</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancel">取消</a>
</div>
</body>
</html>
