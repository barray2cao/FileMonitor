<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<html>
<head>
    <title>Title</title>
    <%@include file="/static/common/common.jsp" %>
    <script type="text/javascript" src="/static/js/payroll.js"></script>
</head>
<body>
<%--显示数据datagrid的table组件--%>
<table id="pay_datagrid"></table>
<%--新增/更新数据的弹出框--%>
<div id="pay_dialog">
    <form id="pay_form" method="post">
        <input type="hidden" name="id">
        <table align="center" style="margin-top: 15px">
            <tr>
                <td>编号</td>
                <td><input name="sn"/></td>
            </tr>
            <tr>
                <td>名字</td>
                <td>
                	<input name="employee.id" class="easyui-combobox"
                           data-options="
                           valueField:'id',
                           textField:'realname',
                           url:'/employee_listAll.do',
                           panelHeight:'auto'"/>
                </td>
            </tr>
            <tr id="pwdInput">
                <td>基本工资</td>
                <td>
                    <input name="salary" class="salary" class="salary"/>
                </td>
            </tr>
            <tr>
                <td>月份</td>
                <td><input name="month"/></td>
            </tr>
            <tr>
                <td>上班日</td>
                <td>
                    <input name="workday"/>
                </td>
            </tr>
            <tr>
                <td>奖金</td>
                <td>
                    <input name="bonus" class="bonus"/>
                </td>
            </tr>
            <tr>
                <td>总计</td>
                <td>
                    <input name="total" />
                </td>
            </tr>
        </table>
    </form>
</div>

<%--显示数据table的toolbar组件--%>
<div id="pay_tb">
    <%--使用shiro标签控制按钮显示--%>
    <shiro:hasPermission name="employee:save">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" data-cmd="add">新增</a>
    </shiro:hasPermission>
    <shiro:hasPermission name="employee:edit">
        <a id="pay_tb_edit" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true"
           data-cmd="edit">编辑</a>
    </shiro:hasPermission>
    <a id="pay_tb_state" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true"
       data-cmd="del">删除</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true" data-cmd="reload">查询全部</a>
    <%--关键字查询--%>
    <input name="keyword"/>
    <select id="month" name="mon">
    	<option value="-1">所有月份</option>
    	<option value="1">1月</option>
    	<option value="2">2月</option>
    	<option value="3">3月</option>
    	<option value="4">4月</option>
    	<option value="5">5月</option>
    	<option value="6">6月</option>
    	<option value="7">7月</option>
    	<option value="8">8月</option>
    	<option value="9">9月</option>
    	<option value="10">10月</option>
    	<option value="11">11月</option>
    	<option value="12">12月</option>
    </select>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" data-cmd="searchForm">查询</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cut',plain:true" data-cmd="exportFile">导出</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-more',plain:true" data-cmd="importFile">导入</a>
</div>

<%--新增/更新数据弹出框的buttons组件--%>
<div id="pay_btns">
    <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" data-cmd="save">保存</a>
    <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="cancel">取消</a>
</div>

<%--导入文件弹出框--%>
<div id="pay_file" class="easyui-dialog" data-options="closed:true, title:'导入文件'">
    <form action="/payroll_import.do" method="post" enctype="multipart/form-data">
        <input type="file" name="file"/><br>
        <input type="submit" value="提交"/>
    </form>
</div>
</body>
</html>
