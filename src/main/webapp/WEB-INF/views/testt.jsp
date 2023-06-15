<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>




<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/js/common/jquery/jquery-ui.min.css" />
<link rel="stylesheet" type="text/css" href="${ctx }/resource/js/jqgrid/css/ui.jqgrid.css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<script type="text/javascript" src="/js/common/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<c:url value='/resource/js/jqgrid/js/jquery.jqGrid.min.js'/>"></script>
<title>Insert title here</title>
<script>
// function noNum(target) {
// 	if (Number.isNaN(target) == false) {
// 		alert("숫자는 입력할수없습니다.");
// 		console.log("숫자에요");
// 	}
// }
</script>
</head>

<body id="body">
	<div class="container">
		<div class="row">
			<div class="col">
				<form>
				<div>
					<span>회원명 : <input type="text" name="mbrName" id="mbr" pattern="^[가-힣a-zA-Z]+$"/></span> 
					<span>주문번호 : <input type="text" name="order" pattern="^[가-힣a-zA-Z]+$" /></span>
				</div>
				<div>
					<span>제품명 : <input type="text" name="prName" /></span>
					<span>삭제유무 : 
						<select name="delyn" id="delyn">
				          <option value="Y">Y</option>
				          <option value="N">N</option>
				        </select>
			        </span>
					<input type="submit" value="조회" />
				</div>
				</form>
				<!-- table.table>thead>tr>th*3^^tbody -->
				<table class="table">
					<thead>
						<tr>
							<th>회원명</th>
							<th>회원아이디</th>
							<th>회원폰번호</th>
							<th>주문번호</th>
							<th>제품번호</th>
							<th>제품명</th>
							<th>사업자명</th>
							<th>사업자폰</th>
							<th>사업자주소</th>
							<th>삭제유무</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list }" var="list">
							<tr>
								<td>${list.MBR_NM }</td>
								<td>${list.MBR_USER_ID }</td>
								<td>${list.MBR_PHONE }</td>
								<td>${list.BZPP_ORDER_NO }</td>
								<td>${list.PDT_NO }</td>
								<td>${list.PDT_NM }</td>
								<td>${list.BZPP_NM }</td>
								<td>${list.BZPP_PHONE }</td>
								<td>${list.BZPP_ADDR }</td>
								<td>${list.DEL_YN }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>

</html>