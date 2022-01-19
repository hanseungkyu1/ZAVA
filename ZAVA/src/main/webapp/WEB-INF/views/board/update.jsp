<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="/resources/js/test.js" type="text/javascript"></script>
  <style type="text/css">
  	.fileDrop{
  		width: 100%;
  		height: 150px;
  		border: 1px solid red;
  		margin-bottom: 20px;
  	}
  	
  	.uploadedItemP{
  		overflow: hidden;
  		white-space: nowrap;
  		text-overflow: ellipsis
  	}
  
  
  </style>
  
</head>
<body>

<h1>글 수정 화면</h1>

<form action="/board/update/${vo.bno}/${curPage}" method="post">
<div class="container">
<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">제목</label>
  <input class="form-control" name="title" id="exampleFormControlInput1" value="${vo.title}">
</div>
<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">작성자</label>
  <input class="form-control" name="writer" id="exampleFormControlInput1" value="${vo.writer}">
</div>
<div class="mb-3">
  <label for="exampleFormControlTextarea1" class="form-label">내용</label>
  <textarea class="form-control" name="content" id="exampleFormControlTextarea1" rows="10">${vo.content}</textarea>
</div>
	<input type="submit" value="글 수정 완료">
</div>
</form>

<script type="text/javascript">

	var bno = ${vo.bno};
	
	$(document).ready(function() {
		
	
		$("input[type='submit']").click(function(event) {
			event.preventDefault();
			
			var title = $("[name='title']").val();
			if(title == ''){
				$("[name='title']").focus();
				return;
			}
			
			var writer = $("[name='writer']").val();
			if(writer == ''){
				$("[name='writer']").focus();
				return;
			}
			
			var content = $("[name='content']").val();
			if(content == ''){
				 $("[name='content']").focus();
				return;
			}
			
			$("form").submit();
			
		});
	});
	
	


</script>





</body>
</html>