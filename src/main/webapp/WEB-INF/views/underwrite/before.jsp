<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<html>
<head>
    <title>Title</title>
    <%@include file="/static/common/common.jsp" %>
    <script type="text/javascript" src="/static/js/underwrite/before.js"></script>
    <style type="text/css">
        #div_before {
            height: 100%;
            position: relative;
            overflow-x: hidden;
        }

        #div_form {
            top: 0;
            width: 100%;
        }

        #div_table1 {
            position: absolute;
            height: 310px;
            width: 100%;
            display: inline-block;
        }

        #div_table2 {
            position: absolute;
            top: 60px;
            height: 315px;
            left: 1%;
            width: 98%;
            display: inline-block;
        }

    </style>
</head>
<body>
<%--待核保--%>
<div id="div_before">
    <div id="div_form">
        <form id="before_form" method="post">
            <fieldset>
                <legend>待核保任务</legend>
                <table align="center" style="text-align: center">
                    <tr>
                        <td>投保人</td>
                        <td><input name="queryApplicant"/></td>
                        <td>险种</td>
                        <td><input name="queryCarinsuranc"/></td>
                        <td>保单号</td>
                        <td><input name="queryOrder"/></td>
                    </tr>
                    <tr>
                        <td>提交时间</td>
                        <td><input name="beginApplyDate" class="easyui-datebox"/></td>
                        <td>~</td>
                        <td><input name="endApplyDate" class="easyui-datebox"/></td>
                        <td><a class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true"
                               data-cmd="searchForm">查询</a></td>
                        <td><a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true"
                               data-cmd="reload">查询全部</a>
                        </td>
                    </tr>
                </table>
            </fieldset>
        </form>
    </div>
    <form id="form_sendback">
        <div id="div_table1">
            <table id="before_datagrid"></table>
        </div>
    </form>
</div>

<%--审核信息--%>
<div id="march_dialog">
    <div id="march_tab" class="easyui-tabs">
        <div id="order_info" title="保单信息" data-options="selected:true" style="display:none;">
            <form id="order_form" class="stdtable" cellspacing="0" cellpadding="0" border="0">
                <table id="orderinfo" class="stdtable" cellspacing="0" cellpadding="0" border="0" align="center">
                    <caption>机动车辆保险投保单</caption>
                    <tr>
                        <td class="td0" colspan="4">被保人信息</td>
                    </tr>
                    <tr>
                        <td>姓名</td>
                        <td><input name="name" readonly/></td>
                        <td>证件号码</td>
                        <td><input name="IdCard" readonly/></td>
                    </tr>
                    <tr>
                        <td>年龄</td>
                        <td><input name="age" readonly/></td>
                        <td>职业</td>
                        <td><input name="profession" readonly/></td>
                    </tr>
                    <tr>
                        <td>电子邮件</td>
                        <td><input name="email" readonly/></td>
                        <td>联络手机</td>
                        <td><input name="phone" readonly/></td>
                    </tr>
                    <tr>
                        <td>联络地址</td>
                        <td colspan="3"><input name="address" readonly style="width: 99%"/></td>
                    </tr>
                    <tr>
                        <td class="td0" colspan="4">被保汽车信息</td>
                    </tr>
                    <tr>
                        <td>牌照号码</td>
                        <td><input name="number" readonly/></td>
                        <td>核定座位数</td>
                        <td><input name="size" readonly/></td>
                    </tr>
                    <tr>
                        <td>汽车型号</td>
                        <td><input name="brand" readonly/></td>
                        <td>新车购置价</td>
                        <td><input name="price" readonly/></td>
                    </tr>
                    <tr>
                        <td>车辆使用性质</td>
                        <td colspan="3"><input name="sort" readonly style="width: 99%"/></td>
                    </tr>
                    <tr>
                        <td class="td0" colspan="4">保险责任及保费</td>
                    </tr>
                    <tr>
                        <td>投保项目</td>
                        <td>投保内容</td>
                        <td>保额(元)</td>
                        <td>保费(元)</td>
                    </tr>
                    <tr>
                        <td><input name="insName" readonly/></td>
                        <td><input name="introduce" readonly/></td>
                        <td><input name="amount" readonly/></td>
                        <td><input name="insure" readonly/></td>
                    </tr>
                    <tr>
                        <td>保单生效日期</td>
                        <td><input name="taketime"/></td>
                        <td>至</td>
                        <td><input name="losetime"/></td>
                    </tr>
                </table>
            </form>
        </div>
        <div title="核保信息" style="padding:20px;display:none;">
            <div id="div_march">
                <div class="div_form">
                    <fieldset>
                        <legend>核保意见</legend>
                        <form id="march_form" method="post">
                            <input type="hidden" name="id"/>
                            <input type="hidden" name="tableId"/>
                            <table>
                                <tr>
                                    <td>核保意见</td>
                                    <td><textarea name="text" rows="4" cols="50"></textarea></td>
                                </tr>
                                <tr>
                                    <td>核保选项</td>
                                    <td><select class="easyui-combobox" name="options" panelHeight="auto"
                                                style="width: 150px;">
                                        <option value="1">同意</option>
                                        <option value="0">退回</option>
                                    </select></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <a class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true"
                                           data-cmd="saveText">提交</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true"
                                           data-cmd="cancel">取消</a>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </fieldset>
                </div>
            </div>
        </div>
        <div title="历史记录">
            <div id="div_table2">
                <table id="march_datagrid"></table>
            </div>
        </div>
    </div>
</div>
</body>
</html>
