<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.14/themes/redmond/jquery-ui.css" type="text/css" />
<link rel="stylesheet" href="//cdn.jsdelivr.net/jqgrid/4.6.0/css/ui.jqgrid.css" type="text/css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.10.2.min.js" /></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.10.3/jquery-ui.min.js" /></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/jqgrid/4.6.0/i18n/grid.locale-kr.js" /></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/jqgrid/4.6.0/jquery.jqGrid.src.js" /></script>

<script>

$(document).ready(function(){
	
    $("#list").jqGrid({          
        url:"/jqgrid2", //ajax 요청주소
        datatype:"json", //결과물 받을 데이터 타입
        autowidth:true,
        postData:{"mbrName":$("#mbrName").val(),"orderNo":$("#orderNo").val(),"prName":$("#prName").val(),"delyn":$("#delyn").val()},
        mtype : "post",
        rowNum:10,
        colNames:["회원명", "회원아이디", "회원폰번호","주문번호","제품번호","제품명","사업자명","사업자폰","사업자주소","삭제유무"],
        colModel:[
 			{name:"mbrnm", index:"mbrnm", align: "center", editable:true, edittype:"text"},
 			{name:"userid", index:"userid" , align: "center", editable:true, edittype:"text"},
 			{name:"mbrphone", index:"mbrphone", align: "center", editable:true, edittype:"text"},
 			{name:"orderno", index:"orderno", align: "center", editable:true, edittype:"text"},
 			{name:"pdtno", index:"pdtno", align: "center", editable:true, edittype:"text"},
 			{name:"pdtnm", index:"pdtnm", align: "center", editable:true, edittype:"text"},
 			{name:"bznm", index:"bznm", align: "center", editable:true, edittype:"text"},
 			{name:"bznum", index:"bznum", align: "center", editable:true, edittype:"text"},
 			{name:"bzadd", index:"bzadd", align: "center", editable:true, edittype:"text"},
 			{name:"delyn", index:"delyn", align: "center", editable:true, edittype:"text"}
 		],
        viewrecords:true 
    });
	$('#search').on("click", function(){
		   $("#list").clearGridData();
		   $("#list").setGridParam({
			   postData:{"mbrName":$("#mbrName").val(),"orderNo":$("#orderNo").val(),"prName":$("#prName").val(),"delyn":$("#delyn").val()}
		   }).trigger("reloadGrid")
	});
	
	
	$("#mbrName").keyup(function(event){ 
		if (!(event.keyCode >=37 && event.keyCode<=40)) { 
			var inputVal = $(this).val(); 
			var check = /[0-9]/; 
			if(check.test(inputVal)){ 
				$(this).val(""); 
			} 
		} 
	});
	
	$("#orderNo").keyup(function(event){ 
		if (!(event.keyCode >=37 && event.keyCode<=40)) { 
			var inputVal = $(this).val(); 
			var check = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/; 
			if(check.test(inputVal)){ 
				$(this).val(""); 
			} 
		} 
	});
	
// 	if($("#orderNo").val() == "" && $("#mbrName").val() == "" && $("#prName").val() == "" && $("#delyn").val() == "") {
// 		$("#search").attr("disabled", true);
// 	} else {
// 		$("#search").removeAttr("disabled"); 
// 	}
const orderNo = document.querySelector('#orderNo');
const mbrName = document.querySelector('#mbrName');
const prName = document.querySelector('#prName');
const delyn = document.querySelector('#delyn');
const searchButton = document.querySelector('#search');

orderNo.addEventListener('keyup', activeEvent);
mbrName.addEventListener('keyup', activeEvent);
prName.addEventListener('keyup', activeEvent);
delyn.addEventListener('keyup', activeEvent);

function activeEvent() {
  switch(orderNo.value == "" && mbrName.value == "" && prName.value == "" && delyn.value == ""){
    case true : searchButton.disabled = true; break;
    case false : searchButton.disabled = false; break
  }
}


});


</script>
</head>

<body>
	<div class="container">
		<div class="row">
			<div class="col">
					<div>
						<span>회원명 : <input type="text" name="mbrName" id="mbrName"/></span> 
						<span>주문번호 : <input type="text" name="orderNo" id="orderNo" /></span>
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
						<button type="button" id="search" class="btn btn-light" disabled>조회</button>
				    </div>
				<table id="list"></table>
			</div>
		</div>
	</div>
</body>

</html>