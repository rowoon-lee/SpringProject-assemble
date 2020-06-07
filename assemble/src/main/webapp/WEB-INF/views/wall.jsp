<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@include file="include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>wall.jsp</title>
<style type="text/css">
#main{
	width: 50%;
    height: 100%;
    position: absolute;
/*     background: white; */
    margin-top: 120px;
    margin-left: 25%;
	}
	
#board{
	border: 2px solid #F2F2F2; 
	background-color: white;
/* #F2F2F2; */
}

#a, #b, #c, #d{
border : 1px solid #F2F2F2;
}

</style>
</head>
<body>
	<div id="main">
 	<br />
      	<h3>그룹별조회</h3>

		 <div id="board">
			<div id="a"><h4>카테고리명</h4></div>
						 	
		 	<div id="b">
		 		<h3>프사/아이디/이름</h3>
		 		<h3>게시일</h3>
		 	</div>
		 	
		 	<div id="c">
		 		<textarea name="contents" id="contents" cols="30" rows="10">
		 			내용
		 		</textarea>
		 	</div>
		 	
		 	<div id="d"><h4>댓글보기</h4></div>
		</div>

	</div>

</body>
</html>