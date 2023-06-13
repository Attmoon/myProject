<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.14/themes/redmond/jquery-ui.css" type="text/css" />
<link rel="stylesheet" href="//cdn.jsdelivr.net/jqgrid/4.6.0/css/ui.jqgrid.css" type="text/css" />
<script type="text/javascript" src="https://code.jquery.com/jquery-1.10.2.min.js" /></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.10.3/jquery-ui.min.js" /></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/jqgrid/4.6.0/i18n/grid.locale-kr.js" /></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/jqgrid/4.6.0/jquery.jqGrid.src.js" /></script>
</head>
<script>

var searchResultColNames =  ['게시글관리번호', '번호', '제목', '작성자', '날짜', '조회수'];
var searchResultColModel =  [
                  {name:'bbsMgtNo',  index:'bbsMgtNo',  align:'center', hidden:true},
                  {name:'bbsNum',    index:'bbsNum',    align:'left',   width:'12%'},
                  {name:'bbsTitle',  index:'bbsTitle',  align:'center', width:'50%'},
                  {name:'bbsWriter', index:'bbsWriter', align:'center', width:'14%'},
                  {name:'bbsDate',   index:'bbsDate',   align:'center', width:'12%'},
                  {name:'bbsHit',    index:'bbsHit',    align:'center', width:'12%'}
                ];

$(function() {
  $("#mainGrid").jqGrid({
    height: 261,
    width: 1019,
    colNames: searchResultColNames,
    colModel: searchResultColModel,
    rowNum : 10,
  });
});
</script>
<body>
	    <table id="mainGrid"></table>
</body>
</html>