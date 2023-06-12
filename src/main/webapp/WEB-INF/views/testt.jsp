<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>


</head>
<body id="body">
	
	
	<div class="container">
		<div class="row">
			<div class="col">
				<form>
				<div>
					<span>회원명 : <input type="text" name="mbrName" /></span> 
					<span>주문번호 : <input type="text" name="order" /></span>
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
<!-- 								<td> -->
													
<%-- 									<c:url value="/board/get" var="getUrl"> --%>
<%-- 										<c:param name="id" value="${board.id }"></c:param> --%>
<%-- 									</c:url> --%>
									
<%-- 									<a href="${getUrl }"> --%>
<%-- 										<c:out value="${board.title }" /> --%>
<!-- 									</a> -->
									
<%-- 									<c:if test="${board.hasFile }"> --%>
<!-- 										<span class="badge rounded-pill bg-light text-dark"> -->
<!-- 											<i class="fa-solid fa-file"></i> -->
<!-- 										</span> -->
<%-- 									</c:if> --%>
									
<%-- 									<c:if test="${board.numOfReply > 0 }"> --%>
<!-- 										<span class="badge rounded-pill bg-light text-dark"> -->
<!-- 											<i class="fa-solid fa-comment-dots"></i> -->
<%-- 											${board.numOfReply } --%>
<!-- 										</span> -->
<%-- 									</c:if> --%>
									
<!-- 								</td> -->
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
	
	
</body>

</html>