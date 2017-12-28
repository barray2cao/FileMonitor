<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>

<body>
	<a href="/chart.do" class="easyui-linkbutton" data-options="iconCls:'icon-tip'"
        >返回报表</a>
	<div id="empty" style="width: 1050px;height:10px;"></div>
	<div id="column_chart" style="width: 1050px;height:500px;"></div>
	<%@include file="/static/common/common.jsp" %>
    <script src="/static/plugins/echarts/echarts.min.js"></script>
    <script src="/static/plugins/echarts/theme/vintage.js"></script>
    <script type="text/javascript">
	$(function(){
		/*柱状图*/
		var myChart = echarts.init(document.getElementById('column_chart'),'vintage');
		
		option = {
			    title : {
			        text: '实际销售情况',
			        subtext: '',
			        left:'40%'
			    },
			    tooltip : {
			        trigger: 'axis'
			    },
			    legend: {
			    	data:['销售金额'],
			    	left:'5%'
			    },
			    toolbox: {
			        show : true,
			        feature : {
			            dataView : {show: true, readOnly: false},
			            magicType : {show: true, type: ['line', 'bar']},
			            restore : {show: true},
			            saveAsImage : {show: true}
			        }
			    },
			    calculable : true,
			    xAxis : [
			        {
			            type : 'category',
			            data : ${realnames}
			        }
			    ],
			    yAxis : [
			        {
			            type : 'value'
			        }
			    ],
			    series : [
			        {
			            name:'销售金额',
			            type:'bar',
			            data:${totalInsures},
			            markLine : {
			                data : [
			                    {type : 'average', name : '平均值'}
			                ]
			            }
			        }
			    ]
			};
		
		// 使用刚指定的配置项和数据显示图表。
		myChart.setOption(option);
	})
	</script>

	
</body>

</html>
