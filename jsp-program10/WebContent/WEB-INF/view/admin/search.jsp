<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta http-equiv="Content-Script-Type" content="text/javascript">
        <meta http-equiv="Content-Style-Type" content="text/css">
        <title>BOOK API</title>
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <style>
        body,p,h1,h2,h3,h4,h5,h6,ul,ol,li,dl,dt,dd,table,th,td,form,fieldset,legend,input,textarea,button,select{margin:0;padding:0}
        body,input,textarea,select,button,table{font-family:'돋움',Dotum,AppleGothic,sans-serif;font-size:12px}
        img,fieldset{border:0}
        ul,ol{list-style:none}
        em,address{font-style:normal}
        a{text-decoration:none}
        a:hover,a:active,a:focus{text-decoration:underline}
        .search_book {margin: 10px;}
        .result{ margin: 20px;}
        .srch{width:100%;padding:5px 0; margin: 0px 10px;}
        .srch legend{overflow:hidden;visibility:hidden;position:absolute;top:0;left:0;width:1px;height:1px;font-size:0;line-height:0}
        .srch{color:#c4c4c4;text-align:left}
        .srch select,.srch input{margin:-1px 0 1px;font-size:12px;color:#373737;vertical-align:middle}
        .srch .keyword{margin-left:1px;padding:2px 3px 5px;border:1px solid #b5b5b5;font-size:12px;line-height:15px}
        .tbl_type,.tbl_type th,.tbl_type td{border:0}
        .tbl_type{width:100%;border-bottom:2px solid #dcdcdc;font-family:Tahoma;font-size:11px;text-align:center}
        .tbl_type caption{display:none}
        .tbl_type th{padding:7px 0 4px;border-top:2px solid #dcdcdc;background-color:#f5f7f9;color:#666;font-family:'돋움',dotum;font-size:12px;font-weight:bold}
        .tbl_type td{padding:6px 0 4px;border-top:1px solid #e5e5e5;color:#4c4c4c}
        </style>
</head>
<body>
        <div class="search_book">
        <fieldset class="srch">
                <legend>검색영역</legend>
                <input type="text" name="query" id="query" accesskey="s" title="검색어" class="keyword" placeholder="입력하세요.">
                <input type="button" id="search33" name="search33" alt="검색" value="검색3" />
        </fieldset>
        
        <table cellspacing="0" border="1" summary="책검색 API 결과" class="tbl_type">
        <caption>책검색 API 결과</caption>
                <colgroup>
                        <col width="10%">
                        <col width="20%">
                        <col width="15%">
                        <col width="15%">
                        <col width="15%">
                        <col width="10%">
                        <col width="15%">
                </colgroup>
                <thead>
                        <tr>
                        <th scope="col">책표지</th>
                        <th scope="col">책이름</th>
                        <th scope="col">저자</th>
                        <th scope="col">출판사</th>
                        <th scope="col">출판년도</th>
                        <th scope="col">가격</th>
                        <th scope="col">ISBN</th>
                        </tr>
                </thead>
                <tbody id="list">
                        <tr class="__oldlist" style="">
                                <td colspan="7">검색 결과가 없습니다.</td>
                        </tr>
                        <tr class="__template" style="display: none">
                                <td><img src="#image#"  width="50px" height="70px" /></td>
                                <td>#title#</td>
                                <td>#author#</td>
                                <td>#publisher#</td>
                                <td>#pubdate#</td>
                                <td>#price#</td>
                                <td>#isbn#</td>
                        </tr>
                </tbody>
        </table>
        </div>
</body>
<script type="text/javascript">
$(function() {
	alert('로딩 종료');
	$('#search33').click( function() {
		alert('서치키 클릭');
              if($('#query').val() == ''){
                      alert('검색어를 입력해 주세요');
                      $('#query').focus();
              }else{
                      search.callAjax($('#query').val());
                      $('#name').val("");
              }
      });

});
var search = {
		callAjax : function(query) {
			$.ajax({
                url:'http://openapi.naver.com/search',
                dataType:'jsonp',
                type:'get',
                crossDomain : true,
                data:{
                	query : encodeURIComponent(query),
                	target : 'book',
                	key : 'c1b406b32dbbbbeee5f2a36ddc14067f'
                },
                success:function(result){
                	alert('네이버 검색 성공 !!');
                        $('#result').html('');
                        if(result['channel']['display'] > 0){
                                $('.__oldlist').remove();
                                for(var i in result['channel']['item']){
                                        var item = result['channel']['item'][i];
                                        $html = template('__template', item);
                                        $html.addClass('__oldlist');
                                        $('#list').append($html);
                                        $('.__oldlist').show();
                                }
                                
                        }else{
                                $('#result').html('');
                                $('#result').append("데이터가 없거나 정상적으로 로딩 되지 않았습니다.");
                        }
                },
                error : function(x, status, msg) {
                

                	    alert(x.status);
                	    alert(e);

                	    if(x.status==0)
                	    {
                	        alert('You are offline!!\n Please Check Your Network.');
                	    }
                	    else if(x.status==404)
                	    {
                	        alert('Requested URL not found.');
                	    }
                	    else if(x.status==500)
                	    {
                	        alert('Internel Server Error.');
                	    }
                	    else if(e=='parsererror')
                	    {
                	        alert('Error.nParsing JSON Request failed.');
                	    }
                	    else if(e=='timeout')
                	    {
                	        alert('Request Time out.');
                	    }
                	    else
                	    {
                	        alert('Unknow Error.n'+x.responseText);
                	    }
                	}
			});
		},
		
		template : function(template_id, params) {
			 var c = $('.' + template_id).clone();
             var html = $('<div>').append(c).html();
             for(var key in params){
                     html = html.replace(new RegExp('#' + key + '#', 'g'), params[key]);
             }
             html = html.replace(/#template_([^#]*)#/g, '$1');
             var $html = $(html).removeClass(template_id).removeClass('__template');
             return $html;
		}
};
	
</script>

</html>