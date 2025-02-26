<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link href="../../../resources/css/style.css" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style>
	body { font-family:'맑은 고딕', verdana; padding:0; margin:0; }
	ul { padding:0; margin:0; list-style:none;  }
 
 
 	section#container { padding:20px 0; border-top:2px solid #eee; border-bottom:2px solid #eee; }
	section#container::after { content:""; display:block; clear:both; }
	aside { float:left; width:200px; }
	
</style>

<style>
	div#container_box ul li { border:5px solid #eee; padding:10px 20px; margin-bottom:20px; }
	div#container_box .orderList span { font-size:20px; font-weight:bold; display:inline-block; width:90px; margin-right:10px; }
</style>

<title>전체 주문 목록</title>
</head>
<body>

<jsp:include page="../member/header.jsp"/>


<section id="container">
	<div class="container">
		<div id="container_box">
				<ul class="adOrderList">
					<c:forEach items="${adOrderList}" var="adOrderList">
						<li>
							<div>
								<p><span>회원 : </span>${adOrderList.mid}</p>
								<p><span>주문번호 : </span><a href="/admin/adminOrderRead?n=${adOrderList.oid}">${adOrderList.oid}</a></p>
								<p><span>주문날짜 : </span><fmt:formatDate value="${adOrderList.odate}" pattern="yyyy.MM.dd" /></p>
								<p><span>수령인 : </span>${adOrderList.oname}</p>
								<p><span>가격 : </span><fmt:formatNumber pattern="###,###,###" value="${adOrderList.amount}" />원</p>
								<p><span>연락처 : </span>${adOrderList.ophone}</p>
								<p><span>배송상태 </span><br>
								${adOrderList.ostatus}</p>
							</div>
					</li>
					</c:forEach>
				</ul>
				
			</div>
		</div>
</section>
<jsp:include page="../footer.jsp" />
</body>

</html>