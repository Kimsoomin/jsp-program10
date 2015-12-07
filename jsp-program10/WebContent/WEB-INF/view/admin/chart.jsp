<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id="linechart_material"></div>	

<script type="text/javascript" src="https://www.google.com/jsapi"></script>
  <script type="text/javascript">

  
    google.load('visualization', '1.1', {packages: ['line']});
    google.setOnLoadCallback(drawChart);

    function drawChart() {

      var data = new google.visualization.DataTable();
      data.addColumn('number', 'Day');
      data.addColumn('number', '판매수량');
      data.addColumn('number', '판매금액');
      data.addColumn('number', '방문자수');

      data.addRows([
        [1,  3, 80.8, 41.8],
        [2,  30.9, 69.5, 32.4],
        [3,  25.4,   57, 25.7],
        [4,  11.7, 18.8, 10.5],
        [5,  1, 17.6, 10.4],
        [6,   8.8, 13.6,  7.7],
        [7,   7.6, 12.3,  9.6],
        [8,  12.3, 29.2, 10.6],
        [9,  16.9, 42.9, 14.8],
        [10, 12.8, 30.9, 11.6],
        [11,  5.3,  7.9,  4.7],
        [12,  6.6,  8.4,  5.2],
        [13,  41.8,  6.3,  3.6],
        [14,  48.2,  6.2,  3.4]
      ]);

      var options = {
        chart: {
          title: 'Admin TEST',
          subtitle: '에혀'
        },
        width: 700,
        height: 500
      };

      var chart = new google.charts.Line(document.getElementById('linechart_material'));

      chart.draw(data, options);
    }
  </script>