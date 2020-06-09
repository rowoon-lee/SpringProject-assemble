<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%-- <%@include file="include/header.jsp" %>  --%>
<c:import url="/assemble.io/avengers/header"></c:import>
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
    margin-top: 70px;
    margin-left: 25%;
	}
	
#board{
	padding: 20px;
	border: 2px solid #F2F2F2; 
	background-color: white;
	margin-bottom : 30px;
	border: 1px solid #CCCCCC;
/* #F2F2F2; */
}

#a, #b{
border-bottom : 1px solid #CCCCCC;
}

#e{
margin-top : 10px;
}

#re{
	background-color: white;
	border: none;
	border: 1px solid #CCCCCC;
}
.lh{
	width: 20px;
	background: none;
}
#bookmark{
	margin-left: 74%;	
}

#retext{
	width: 100%;
	border : 1px solid #CCCCCC;
}

.bt{
	background-color: white;
	border: none;
}

</style>
</head>
<body>
 	<div id="main">
 	<br />
      	<h3>나의 소식 피드</h3>
		
		<c:forEach var="tl" items="${mainlist }">
		 <div id="board">
			<div id="a"><h4>${tl.groupno }(그룹명)</h4></div>
						 	
		 	<div id="b">
		 		<h4>${tl.memberno }아이디(이름)</h4>
		 		<h5>${tl.boarddate }게시일</h5>
		 	</div>
		 	<div id="c">
		 		<h4>${tl.boardcontents } </h4>

				<h5>좋아요 : ${tl.boardlike }</h5>
				<h5>싫어요 : ${tl.boardhate }</h5>
				<h5>요청인지 : ${tl.requestboolean }</h5>
			</div>
				
			<div id="d">
				<input type="button" value="댓글" id="re" />
				<button class="bt">
					<img src="/resources/assets/img/like.png" id="like" class="lh">
					<h5 id="count"></h5>
				</button>
				<button class="bt">
					<img src="/resources/assets/img/hate.png" id="hate" class="lh">
				</button>

				<button id="bookmark" class="bt" id="likeb">
					<img src="/resources/assets/img/bookmark_before.png"
						alt="bookmark" id="bk" class="lh" />
				</button>

				<button class="bt" id="hateb">
					<img src="/resources/assets/img/more.png" alt="more" class="lh" />
				</button>

					<!-- <button>
							<img src="/resources/assets/img/bookmark_after.png" alt="" />
							</button> -->
				</div>
				<div id="e">
					<input type="text" name="" id="retext" placeholder=" 댓글을 입력하세요" />
				</div>
		</div>
		</c:forEach>
	</div>
</body>
</html>