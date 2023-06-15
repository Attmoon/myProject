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
$(document).ready(function(){
    $("#list").jqGrid({          
        url:"/jqgrid2", //ajax 요청주소
        datatype:"json", //결과물 받을 데이터 타입
        postData:{"mbrName":$("#mbrName").val(),"orderNo":$("#orderNo").val(),"prName":$("#prName").val(),"delyn":$("#delyn").val()},
        mtype : "post",
        rowNum:10,
        colNames:["회원명", "회원아이디", "회원폰번호","주문번호","제품번호","제품명","사업자명","사업자폰","사업자주소","삭제유무"],
        colModel:[
 			{name:"mbrnm", index:"mbrnm", width:90, align: "center", editable:true, edittype:"text"},
 			{name:"userid", index:"userid", width:100 , align: "center", editable:true, edittype:"text"},
 			{name:"mbrphone", index:"mbrphone", width:150, align: "center", editable:true, edittype:"text"},
 			{name:"orderno", index:"orderno", width:80, align: "center", editable:true, edittype:"text"},
 			{name:"pdtno", index:"pdtno", width:80, align: "center", editable:true, edittype:"text"},
 			{name:"pdtnm", index:"pdtnm", width:80, align: "center", editable:true, edittype:"text"},
 			{name:"bznm", index:"bznm", width:80, align: "center", editable:true, edittype:"text"},
 			{name:"bznum", index:"bznum", width:80, align: "center", editable:true, edittype:"text"},
 			{name:"bzadd", index:"bzadd", width:80, align: "center", editable:true, edittype:"text"},
 			{name:"delyn", index:"delyn", width:80, align: "center", editable:true, edittype:"text"}
 		],
        viewrecords:true 
    });
	$('#search').on("click", function(){
		   $("#list").clearGridData();
		   $("#list").setGridParam({
			   postData:{"mbrName":$("#mbrName").val(),"orderNo":$("#orderNo").val(),"prName":$("#prName").val(),"delyn":$("#delyn").val()}
		   }).trigger("reloadGrid")
	});
});
</script>
</head>

<body>
	<form method="post">
		<div>
			<span>회원명 : <input type="text" name="mbrName" id="mbrName" pattern="^[가-힣a-zA-Z]+$"/></span> 
			<span>주문번호 : <input type="text" name="orderNo" id="orderNo" pattern="^[가-힣a-zA-Z]+$" /></span>
		</div>
		<div>
			<span>제품명 : <input type="text" name="prName" id="prName" /></span>
			<span>삭제유무 : 
				<select name="delyn" id="delyn">
		          <option value="">-선택-</option>
		          <option value="Y">Y</option>
		          <option value="N">N</option>
		        </select>
	        </span>
		</div>
	</form>
	<button id="search">조회</button>
	<table id="list"></table>
</body>

</html>