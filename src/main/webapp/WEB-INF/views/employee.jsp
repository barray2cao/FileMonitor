<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<html>
<head>
    <title>Title</title>
    <%@include file="/static/common/common.jsp" %>
    <script type="text/javascript" src="/static/js/employee.js"></script>
</head>
<body>
<%--显示数据datagrid的table组件--%>
<table id="emp_datagrid"></table>
<%--新增/更新数据的弹出框--%>
<div id="emp_dialog">
    <form id="emp_form" method="post">
        <input type="hidden" name="id">
        <table align="center" style="margin-top: 15px">
            <tr>
                <td>用户名</td>
                <td><input name="username"/></td>
            </tr>
            <tr>
                <td>真实姓名</td>
                <td><input name="realname"/></td>
            </tr>
            <tr id="pwdInput">
                <td>密码</td>
                <td>
                    <input type="password" name="password"/>
                    <%--<input id="pwd" name="password" type="password" class="easyui-validatebox" data-options="required:true" />
                    <input id="rpwd" name="rpwd" type="password" class="easyui-validatebox"
                           required="required" validType="equals['#pwd']" />--%>
                </td>
            </tr>
            <tr>
                <td>电话</td>
                <td><input name="tel"/></td>
            </tr>
            <tr>
                <td>邮箱</td>
                <td>
                    <input name="email"/>
                    <%--<input name="email" class="easyui-validatebox" data-options="required:true,validType:'email'"/>--%>
                </td>
            </tr>
            <tr>
                <td>入职时间</td>
                <td>
                    <input name="hiredate" class="easyui-datebox"/>
                </td>
            </tr>
            <tr>
                <td>部门</td>
                <td>
                    <input name="dept.id" class="easyui-combobox"
                           data-options="
                           valueField:'id',
                           textField:'name',
                           url:'/department_listAll.do',
                           panelHeight:'auto'"/>
                </td>
            </tr>
            <tr>
                <td>管理员</td>
                <td>
                    <select class="easyui-combobox" name="admin" panelHeight="auto"
                            style="width: 150px;">
                        <option value="true">是</option>
                        <option value="false">否</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>角色</td>
                <td>
                    <input id="roles_combobox" class="easyui-combobox"
                           data-options="
                           valueField:'id',
                           textField:'name',
                           url:'/role_listAll.do',
                           panelHeight:'auto',
                           multiple:true"/>
                </td>
            </tr>
        </table>
    </form>
</div>

<%--显示数据table的toolbar组件--%>
<div id="emp_tb">
    <%--使用shiro标签控制按钮显示--%>
    <shiro:hasPermission name="employee:save">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" data-cmd="add">新增</a>
    </shiro:hasPermission>
    <shiro:hasPermission name="employee:edit">
        <a id="emp_tb_edit" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true"
           data-cmd="edit">编辑</a>
    </shiro:hasPermission>
    <a id="emp_tb_state" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true"
       data-cmd="changeState">离职</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">查询全部</a>
    <%--关键字查询--%>
    <input name="keyword"/>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" data-cmd="searchForm">查询</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cut',plain:true" data-cmd="exportFile">导出</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-more',plain:true" data-cmd="importFile">导入</a>
</div>

<%--新增/更新数据弹出框的buttons组件--%>
<div id="emp_btns">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="save">保存</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancel">取消</a>
</div>

<%--导入文件弹出框--%>
<div id="emp_file" class="easyui-dialog" data-options="closed:true, title:'导入文件'">
    <form action="/employee_import.do" method="post" enctype="multipart/form-data">
        <input type="file" name="file"/><br>
        <input type="submit" value="提交"/>
    </form>
</div>
</body>
</html>
