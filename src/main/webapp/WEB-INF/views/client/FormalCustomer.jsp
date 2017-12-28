<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<html>
<head>
    <title>正式客户</title>
    <%@include file="/static/common/common.jsp" %>
    <script type="text/javascript" src="/static/js/FormalCustomer.js"></script>
</head>
<body>
<%--显示数据datagrid的table组件--%>
<table id="fc_datagrid"></table>
<%--编辑页面--%>
<div id="fc_dialog">
    <form id="fc_form" method="post">
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
<%--显示数据table的toolbar组件--%>
<div id="fc_tb">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" data-cmd="edit">完善客户资料</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">刷新</a>
    关键字查询:
    <input name="keyword" style="width: 100px"/>
    录入时间:
    <input name="beginDate" class="easyui-datebox beginDate" style="width: 100px"/>--
    <input name="endDate" class="easyui-datebox endDate" style="width: 100px"/>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" data-cmd="searchForm">查询</a>
    <%--使用shiro标签控制按钮显示--%>
    <select id="searchForm" name="exploitState">
        <option value="2">全部客户</option>
        <option value="1">已交钱</option>
        <option value="0">未交钱</option>
    </select>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cut',plain:true" data-cmd="exportFile">导出</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cut',plain:true" data-cmd="importFile">导入</a>
</div>

<%--新增/更新数据弹出框的buttons组件--%>
<div id="fc_btns">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="save">保存</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancel">取消</a>
</div>

<div id="fc_file" class="easyui-dialog" data-options="closed:true, title:'导入文件',top:150">
    <form action="/fc_import.do" method="post" enctype="multipart/form-data">
        <input type="file" name="file"/><br>
        <input type="submit" value="提交" style="align-content: center"/>
    </form>
</div>

</body>
</html>
