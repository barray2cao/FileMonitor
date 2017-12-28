<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<html>
<head>
    <title>Title</title>
    <%@include file="/static/common/common.jsp" %>
    <script type="text/javascript" src="/static/js/safety.js"></script>
</head>
<body>
<%--显示数据datagrid的table组件--%>
<table id="sa_datagrid"></table>
<%--新增/更新数据的弹出框--%>
<div id="sa_dialog">
    <form id="sa_form" method="post">
        <input type="hidden" name="id">
        <table align="center" style="margin-top: 15px">
            <tr>
                <td>机构名称</td>
                <td><input name="nameof"/></td>
            </tr>
            <tr>
                <td>机构编码</td>
                <td><input name="coding"/></td>
            </tr>
            <tr>
                <td>法人代表</td>
                <td><input name="corporate"/></td>
            </tr>
            <tr>
                <td>法人代表身份证号码</td>
                <td><input name="card"/></td>
            </tr>
            <tr>
                <td>联系电话</td>
                <td>
                    <input name="phone"/>
                </td>
            </tr>
            <tr>
                <td>机构地址</td>
                <td>
                    <input name="ddress"/>
                </td>
            </tr>

        </table>
    </form>
</div>

<%--显示数据table的toolbar组件--%>
<div id="sa_tb">
    <%--使用shiro标签控制按钮显示--%>
    <shiro:hasPermission name="sa:save">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" data-cmd="add">新增</a>
    </shiro:hasPermission>
    <shiro:hasPermission name="sa:edit">
        <a id="sa_tb_edit" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true"
           data-cmd="edit">编辑</a>
    </shiro:hasPermission>
    <a id="sa_tb_state" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true"
       data-cmd="changeState">解除</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">查询全部</a>
    <%--关键字查询--%>
    <input name="keyword" placeholder="请输入关键字"/>
        状态:
        <select id="selected" name="exploitState">
            <option value="-1">--请选择--</option>
            <option value="1">合作</option>
            <option value="0">未合作</option>
        </select>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" data-cmd="searchForm">查询</a>
</div>

<%--新增/更新数据弹出框的buttons组件--%>
<div id="sa_btns">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="save">保存</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancel">取消</a>
</div>


</body>
</html>
