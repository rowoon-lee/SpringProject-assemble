<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@include file="include/header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home.jsp</title>
<style type="text/css">
#main{
	width: 50%;
    height: 100%;
    position: absolute;
/*     background: white; */
    margin-top: 120px;
    margin-left: 25%;
    border: 1px solid gray;
	}
	
#board{
	border: 2px solid #F2F2F2; 
	background-color: white;
/* #F2F2F2; */
}

#a, #d{
border : 1px solid #F2F2F2;
}

</style>
</head>
<body>
 	<div id="main">
 	<br />
      	<h3>나의 소식 피드</h3>

		 <div id="board">
			<div id="a"><h4>그룹명</h4></div>
						 	
		 	<div id="b"><h4>프사/아이디(이름)/날짜</h4></div>
		 	
		 	<div id="c">
		 		<h4>내용</h4>
		 	</div>
		 	
		 	<div id="d"><h4>댓글</h4></div>
		</div>

	</div>
</body>
</html>