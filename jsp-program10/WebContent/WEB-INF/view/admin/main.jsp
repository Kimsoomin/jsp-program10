<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id="header"></div>

<div class="list-group" id="main_left">
  <a href="#" class="list-group-item active">
    관리자 기능
  </a>
  <a href="#" class="list-group-item" id="admin_home">홈</a>
  <a href="#" class="list-group-item" id="mgmt_member">회원관리</a>
  <a href="#" class="list-group-item" id="mgmt_prod">제품관리</a>
  <a href="#" class="list-group-item" id="mgmt_emp">사원관리</a>
  <a href="#" class="list-group-item" id="mgmt_stat">통계보기</a>
  <a href="#" class="list-group-item" id="search">책검색</a>
</div>

<div id="main_right">

<div id="linechart_material"></div> 

</div>


<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script>
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

$(function() {
	$('#header').load('${context}/admin.do?page=header');
	$('#main_left').css("float","left").css('width','300px').css('text-align','center');
	$('#main_right').css("float","left").css("margin-left","150px").css('width','50%');
	$('#tab_member').css('width','100%');
	$('#mgmt_member').click(function() {
		Admin.memberList();
	});
	$('#search').click(function() {
		$('#main_right').load('${context}/admin.do?page=search');
	});
});	
 $('#btn_admin_table').click(function() {
    $('#btn_admin_table').submit();
  });
 
 
 var Admin = {
	memberList : function() {
		 $.getJSON('${context}/admin.do?page=member_list', function(data) {
			 var table = '<h1>회원목록</h1>'
					+'<table id="tab_member"><tr><th>아이디</th><th>이름</th><th>성별</th>'
					+'<th>생년원일</th><th>전화번호</th><th>이메일</th><th>나이</th></tr>';
					$.each(data, function() {
						table +='<tr><td>'+this.userid+'</td>'
							+'<td>'+this.name+'</td><td>'+this.gender+'</td>'
							+'<td>'+this.birth+'</td><td>'+this.phone+'</td>'
							+'<td>'+this.email+'</td><td>'+this.age+'</td></tr>';
					});
					table += '</table>';
					
					$(table).appendTo($('#main_right').empty());
		});
	},
	memberNotExist : function() {
		var table ='<h1>회원목록</h1><table id="tab_member"><tr><th>아이디</th>';
			table += '<th>이름</th><th>성별</th><th>생년원일</th><th>전화번호</th><th>이메일</th></tr>';
			table += '<tr><td colspan="6"><h2>회원목록이 없습니다.</h2></td></tr></table>';
			$(table).appendTo($('#main_right').empty());
	},
	
	
	
 };
 
</script>