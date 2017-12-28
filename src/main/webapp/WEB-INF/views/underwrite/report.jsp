<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<html>
<head>
    <title>已上报任务</title>
    <%@include file="/static/common/common.jsp" %>
    <script type="text/javascript" src="/static/js/underwrite/report.js"></script>
    <style type="text/css">

        .pos_right {
            position: relative;
            right: 180px;
        }
        #div_fa{
            overflow-x: hidden;
        }
        #report_form {
            top: 20px;
            height: 70%;
            position: relative;
            width: 100%;
        }

        #report_table {
            top: -60px;
            height: 60px;
            position: relative;
            width: 100%;
        }

        #div_btns {
            position: relative;
            bottom: 0;
            height: 4%;
            width: 98%;
            left: 88%;
        }

        #div_table {
            position: relative;
            height: 200px;
            width: 100%;
        }

        #searchBtn {
            position: relative;
            width: 80%;
            top: 90px;
            left: 55%;
        }


    </style>
</head>
<body>
<div id="div_fa">
    <fieldset>
        <legend>已上报任务</legend>
        <input type="hidden" name="id">
        <table id="report_table">
            <form id="report_form" method="post">
                <tr>
                    <td><span style='color: red'>*</span>机构部门
                        <input id="orgname" type="text" style="width: 210px;"/>
                        <input name="" type="checkbox" value=""/>包含下级
                    </td>

                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span style='color: red'>*</span>产品
                        <input id="cs_insName" name="carinsuranc.id" class="easyui-combobox" style="width: 210px;"
                               data-options="
                           valueField:'id',
                           textField:'insName',
                           url:'/report_product.do'
                          "/>
                    </td>

                    <td class="pos_right">投保人名称<input id="clientname" name="client.name" style="width: 210px;"/></td>
                </tr>
                <br>


                <tr>
                    <td><span style='color: red'>*</span>申请起期<input id="beginApplyDate" name="beginApplyDate"
                                                                    class="easyui-datebox" style="width: 100px;"/>-
                        <input id="endApplyDate" name="endApplyDate" class="easyui-datebox" style="width: 100px;"/></td>
                    <td class="pos_right"> &nbsp;&nbsp; &nbsp;申请单号<input id="applyordernumber" name="applyordernumber"
                                                                         style="width: 210px;"/></td>
                </tr>
                <br>

                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;车牌号<input id="platenumber" name="car.number"
                                                                style="width: 210px;"/></td>
                    <td class="pos_right"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;车名<input style="width: 210px;"
                                                                                               id="carnumber">
                    </td>

                </tr>

                <div id="searchBtn">
                    <a class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true"
                       data-cmd="searchForm">查询</a>
                    <a class="easyui-linkbutton" data-options="iconCls:'icon-reload',plain:true"
                       data-cmd="reload">刷新</a>
                </div>
            </form>
        </table>
    </fieldset>

    <div id="div_table">
        <table id="report_datagrid"></table>
    </div>
    <div id="div_btns">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-ok',plain:true" data-cmd="accept">接收</a>
        <a class="easyui-linkbutton" data-options="iconCls:'icon-cancel',plain:true" data-cmd="back">退回</a>
    </div>
</div>

</body>
</html>
