<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="/static/common/common.jsp" %>
    <link rel="stylesheet" href="/static/css/index.css">
</head>
<body>
<script type="text/javascript" src="/static/js/tsTable.js"></script>
<div id="according" class="easyui-accordion">
    <div title="投保人信息录入" data-options="selected:true" style="width:300px;height:200px;">
        <!-- 投保人信息录入 -->
        <table title="投保人信息录入" align="center">
            <tr align="center">
                <td id="insureInfo">
                    <h2>投保人信息录入</h2>
                    <input id="insureId" type="hidden">
                    姓名:
                    <input id="insureName" type="text" style="width: 215px" class="easyui-validatebox"
                           data-options="required:true">
                    年龄:<input id="insureAge" type="text" style="width: 215px" class="easyui-validatebox">
                    性别:<select id="insureGender" style="width:100px;">
                    <option value="1">男</option>
                    <option value="0">女</option>
                </select>
                </td>
            </tr>
            <tr align="center">
                <td>
                    身份证:
                    <input id="insureIdCard" type="text" style="width: 215px" class="easyui-validatebox">
                    联系电话:
                    <input id="insurePhone" type="text" style="width: 215px" class="easyui-validatebox">
                    联系地址:
                    <input id="insureAddress" type="text" style="width: 215px" class="easyui-validatebox">
                </td>
            </tr>
            <tr>
                <th>
                    <input id="checkInsure" type="button" value="选择客户信息">
                    <input id="reloadInsure" type="button" value="客户重置">
                </th>
            </tr>
        </table>
    </div>
    <div title="被保人信息录入" style="width:300px;height:200px;">
        <!-- 被保人信息录入 -->
        <table title="被保人信息录入" align="center">
            <tr align="center">
                <td id="assurerInfo">
                    <h2>被保人信息录入</h2>
                    <input id="assurerId" type="hidden" name="insureId">
                    姓名:<input id="assurerName" type="text" style="width: 215px"
                              class="easyui-validatebox" data-options="required:true">
                    年龄:<input id="assurerAge" type="text" style="width: 215px" class="easyui-validatebox">
                    性别:<select id="assurerGender" style="width:100px;">
                    <option value="1">男</option>
                    <option value="0">女</option>
                </select>
                </td>
            </tr>
            <tr align="center">
                <td>
                    身份证:<input id="assurerIdCard" type="text" style="width: 215px" class="easyui-validatebox">
                    联系电话:<input id="assurerPhone" type="text" style="width: 215px" class="easyui-validatebox">
                    联系地址:<input id="assurerAddress" type="text" style="width: 215px" class="easyui-validatebox">
                </td>
            </tr>
            <tr>
                <th>
                    <input id="checkAssurer" type="button" value="选择客户信息">
                    <input id="reloadAssurer" type="button" value="客户重置">
                </th>
            </tr>
        </table>
    </div>
    <div title="车辆信息录入" style="width:300px;height:200px;">
        <!-- 车辆信息录入 -->
        <table align="center" title="车辆信息录入">
            <tr align="center">
                <td id="carInfo">
                    <h2>车辆信息录入</h2>
                    <input id="carId" type="hidden">
                    名称:<input id="name" type="text" style="width: 215px" readonly="readonly">
                    品牌:<input id="brand" type="text" style="width: 215px" readonly="readonly">
                    型号:<input id="size" type="text" style="width: 215px" readonly="readonly">
                </td>
            </tr>
            <tr align="center">
                <td>
                    类别:<input id="sort" type="text" style="width: 215px" readonly="readonly">
                    车牌号:<input id="platenumber" type="text" style="width: 215px" value="粤A12345">
                    载客数量:<input id="number" type="text" style="width: 215px" readonly="readonly">
                </td>
            </tr>
            <tr align="center">
                <td>
                    市场估值:<input id="price" type="text" style="width: 215px" readonly="readonly">
                    车辆购入时间:<input id="inputTime" class="easyui-datebox" style="width: 215px" required="true">
                    备注:<input id="remark" type="text" style="width: 215px" value="拖拉机">
                </td>
            </tr>
            <tr>
                <th>
                    <input id="checkCar" type="button" value="选择车辆信息">
                    <input id="reloadCar" type="button" value="车辆重置">
                </th>
            </tr>
        </table>
    </div>
    <div title="保险信息录入" style="width:300px;height:200px;">
        <!-- 车险信息录入 -->
        <table title="保险信息录入" align="center">
            <tr align="center">
                <td id="riskInfo">
                    <h2>保险信息录入</h2>
                    <input id="carinsurancId" type="hidden">
                    保险种类:<input id="insName" type="text" style="width: 215px" readonly="readonly">
                    保险时长:<input id="insuranceTime" type="text" style="width: 215px" readonly="readonly">/年
                </td>
            </tr>
            <tr align="center">
                <td>
                    保险额度:<input id="amount" type="text" style="width: 215px" readonly="readonly">/¥
                    生效日期:<input id="taketime" class="easyui-datebox taketime" style="width: 215px" required="true">
                    失效日期:<input id="losetime" style="width: 215px" readonly="readonly">
                </td>
            </tr>
            <tr>
                <th>
                    <input id="checkRick" type="button" value="选择险种">
                    <input id="reloadRisk" type="button" value="险种重置">
                </th>
            </tr>
        </table>
        <br>
        <br>
    </div>
</div>
<div align="center">
    <a id="submit_allForm" class="easyui-linkbutton"
       data-options="iconCls:'icon-save',text:'提交保险单'"></a>
</div>
<!-- 车辆弹窗界面 -->
<div id="carDD" class="easyui-dialog" title="车辆信息" style="width:400px;height:300px;">
    <!-- 车辆信息列表 -->
    <table id="allCar" class="easyui-datagrid"></table>
</div>
<!-- 险种弹窗列表 -->
<div id="riskDD" class="easyui-dialog" title="险种信息" style="width:400px;height:300px;">
    <!-- 险种列表 -->
    <table id="allRick" class="easyui-datagrid"></table>
</div>
<!-- 投保人弹窗列表 -->
<div id="insureDD" class="easyui-dialog" title="投保人信息" style="width:400px;height:300px;">
    <!-- 险种列表 -->
    <table id="allInsure" class="easyui-datagrid"></table>
</div>
<!-- 被保人弹窗列表 -->
<div id="assurerDD" class="easyui-dialog" title="被保人信息" style="width:400px;height:300px;">
    <!-- 险种列表 -->
    <table id="allAssurer" class="easyui-datagrid"></table>
</div>


<div id="car_tb">
    <!-- 车辆关键字查询 -->
    车辆名称:<input id="carKey" name="keyword"/>
    <a id="selectCar" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true"
       data-cmd="searchForm">查询</a>
    <a id="loadCar" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true"
       data-cmd="searchForm">重置</a>
    <a id="chooseCar" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true"
       data-cmd="searchForm">确定</a>
</div>
<div id="risk_tb">
    <!-- 险种关键字查询 -->
    保险名称:<input id="riskKey" name="keyword"/>
    <a id="selectRick" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" data-cmd="searchForm">查询</a>
    <a id="loadRick" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true"
       data-cmd="searchForm">重置</a>
    <a id="chooseRick" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" data-cmd="searchForm">确定</a>
</div>
<div id="insure_tb">
    <!-- 投保人关键字查询 -->
    投保人姓名:<input id="insureKey" name="keyword"/>
    <a id="selectInsure" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true"
       data-cmd="searchForm">查询</a>
    <a id="loadInsure" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" data-cmd="searchForm">重置</a>
    <a id="chooseInsure" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true"
       data-cmd="searchForm">确定</a>
</div>
<div id="assurer_tb">
    <!-- 被保人关键字查询 -->
    被保人姓名:<input id="assurerKey" name="keyword"/>
    <a id="selectAssurer" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true"
       data-cmd="searchForm">查询</a>
    <a id="loadAssurer" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true" data-cmd="searchForm">重置</a>
    <a id="chooseAssurer" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true"
       data-cmd="searchForm">确定</a>
</div>
</body>
</html>
