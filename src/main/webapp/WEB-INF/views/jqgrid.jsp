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

<script>
// $(document).ready(function() {
// 	$("#list").jqGrid({
// 		datatype: "json",
// 		url: "/jqgrid2",
// 		caption:"list",
// 		mtype : "POST",
// 		jsonReader: {
// 			repeatitems:false
// 		},
// 		colNames:['회원명', '회원아이디', '회원폰번호','주문번호','제품번호','제품명','사업자명','사업자폰','사업자주소','삭제유무'],
// 		colModel:[
// 			{name:'MBR_NM', index:'MBR_NM', width:90, align: "center"},
// 			{name:'MBR_USER_ID', index:'MBR_USER_ID', width:100 , align: "center" },
// 			{name:'MBR_PHONE', index:'MBR_PHONE', width:150, align: "center" },
// 			{name:'BZPP_ORDER_NO', index:'BZPP_ORDER_NO', width:80, align: "center"},
// 			{name:'PDT_NO', index:'PDT_NO', width:80, align: "center"},
// 			{name:'PDT_NM', index:'PDT_NM', width:80, align: "center"},
// 			{name:'BZPP_NM', index:'BZPP_NM', width:80, align: "center"},
// 			{name:'BZPP_PHONE', index:'BZPP_PHONE', width:80, align: "center"},
// 			{name:'BZPP_ADDR', index:'BZPP_ADDR', width:80, align: "center"},
// 			{name:'DEL_YN', index:'DEL_YN', width:80, align: "center"}
// 		],
// 		autowidth: true,
// 		rownumbers : true,
// 		multiselect:true,
// 		pager:'#pager',
// 		rowNum: 10,
// 		rowList: [10, 20, 50],
// 		height: 250,
// 		viewrecords:true
// 	});


// });
$(document).ready(function(){
    $("#list").jqGrid({          
        url:"/jqgrid", //ajax 요청주소
        datatype:"json", //결과물 받을 데이터 타입
        mtype : "GET",
        jsonReader : {
        	root : 'list',
        	repeatitems : false
        },
        rowNum:10,
        colNames:['회원명', '회원아이디', '회원폰번호','주문번호','제품번호','제품명','사업자명','사업자폰','사업자주소','삭제유무'],
        colModel:[
 			{name:'MBR_NM', index:'MBR_NM', width:90, align: "center", edittype:"text"},
 			{name:'MBR_USER_ID', index:'MBR_USER_ID', width:100 , align: "center", edittype:"text"},
 			{name:'MBR_PHONE', index:'MBR_PHONE', width:150, align: "center", edittype:"text"},
 			{name:'BZPP_ORDER_NO', index:'BZPP_ORDER_NO', width:80, align: "center", edittype:"text"},
 			{name:'PDT_NO', index:'PDT_NO', width:80, align: "center", edittype:"text"},
 			{name:'PDT_NM', index:'PDT_NM', width:80, align: "center", edittype:"text"},
 			{name:'BZPP_NM', index:'BZPP_NM', width:80, align: "center", edittype:"text"},
 			{name:'BZPP_PHONE', index:'BZPP_PHONE', width:80, align: "center", edittype:"text"},
 			{name:'BZPP_ADDR', index:'BZPP_ADDR', width:80, align: "center", edittype:"text"},
 			{name:'DEL_YN', index:'DEL_YN', width:80, align: "center", edittype:"text"}
 		],
        viewrecords:true 
    });
    console.log($("#list").jqGrid('getCol', 'MBR_NM', true));
});
</script>
</head>

<body>
	<table id="list"></table>
</body>

</html>