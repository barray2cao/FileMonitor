<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<html>
<head>
    <title>潜在客户</title>
    <%@include file="/static/common/common.jsp" %>
    <script type="text/javascript" src="/static/js/client.js"></script>
</head>
<body>
<%--显示数据datagrid的table组件--%>
<table id="client_datagrid"></table>
<%--新增/更新数据的弹出框--%>
<div id="client_dialog">
    <form id="client_form" method="post">
        <input type="hidden" name="id">
        <table align="center" style="margin-top: 15px">
            <tr>
                <td>客户姓名</td>
                <td><input name="name"/></td>
            </tr>
            <tr>
                <td>客户年龄</td>
                <td><input name="age"/></td>
            </tr>
            <tr>
                <td>客户身份证</td>
                <td><input name="idCard"/></td>
            </tr>
            <tr>
                <td>性别</td>
                <td>
                    <select class="easyui-combobox" name="gender" panelHeight="auto"
                            style="width: 150px;">
                        <option value="1">男</option>
                        <option value="0">女</option>
                        <option value="-1">保密</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>职业</td>
                <td>
                    <input name="profession"/>
                </td>
            </tr>
            <tr>
                <td>工资</td>
                <td>
                    <input name="salary"/>
                </td>
            </tr>
            <tr>
                <td>客户来源</td>
                <td>
                    <input name="clientSource"/>
                </td>
            </tr>
            <tr>
                <td>联系电话</td>
                <td>
                    <input name="phone"/>
                </td>
            </tr>
            <tr>
                <td>邮箱</td>
                <td>
                    <input name="email"/>
            </tr>
        </table>
    </form>
</div>

<!-- 移交的弹出框 -->
<div id="transfer_dialog">
    <form id="transfer_form" method="post">
        <table style="margin-top: 10px">
            <tr>
                <td>请选择新的跟进人:</td>
                <td><input id="newCharge" name="newCharge.id"></td>
            </tr>
            <tr align="center">
                <td colspan="5">
                    <textarea name="transferContent" style="width:250px;height:250px;"></textarea>
                </td>
            </tr>
        </table>
    </form>
</div>


<%--显示数据table的toolbar组件--%>
<div id="client_tb">
    <%--使用shiro标签控制按钮显示--%>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" data-cmd="add">新增</a>
    <a id="client_tb_edit" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true"
       data-cmd="edit">编辑</a>
    <a id="client_tb_state" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true"
       data-cmd="changeState">放入资源池</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">刷新</a>
    <select id="searchForm" name="state">
        <option value="1">正在开发</option>
        <option value="0">开发失败</option>
        <option value="-1">全部客户</option>
    </select>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cut',plain:true" data-cmd="exportFile">导出</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-redo',plain:true" data-cmd="transfer">移交</a>
</div>

<%--新增/更新数据弹出框的buttons组件--%>
<div id="client_btns">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="save">保存</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancel">取消</a>
</div>

<%--导入文件弹出框--%>
<div id="client_file" class="easyui-dialog" data-options="closed:true, title:'导入文件'">
    <form action="/clientloyee_import.do" method="post" enctype="multipart/form-data">
        <input type="file" name="file"/><br>
        <input type="submit" value="提交"/>
    </form>
</div>

<%--移交的弹出框的buttons组件--%>
<div id="transfer_btns">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="transferSave">保存</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="transferCancel">取消</a>
</div>
</body>
</html>
