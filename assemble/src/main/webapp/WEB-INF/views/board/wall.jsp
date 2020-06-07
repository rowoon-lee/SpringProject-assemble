<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../include/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>wall.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
     $(function(){        
      $(".btn").click(function(){
         
         
          $(".bno").each(function(index){         
            var bno = $(this).val();
            console.log(bno);         
         });
         
          document.frm.action = "selectBoard";
         document.frm.submit();
      });
   }); 
    
</script>
<style type="text/css">
#main{
	width: 50%;
    height: 100%;
    position: absolute;
/*     background: white; */
    margin-top: 120px;
    margin-left: 25%;
    marg
	}
	
#info{
	border: 2px solid #F2F2F2; 
	background-color: pink;
	margin-bottom : 15px;
}
#select{
	background-color: white;
}

#insert{
	height: 100%;
	border: 2px solid black; 
	margin-bottom: 30px;
}

#board{
	border: 2px solid #F2F2F2; 
	background-color: white;
	margin-bottom : 30px;
/* #F2F2F2; */
}

 #d{
border-top : 2px solid #F2F2F2;
border-bottom : 2px solid #F2F2F2;
}

.lh{
	width: 20px;
	background: none;
}
#bookmark{
	margin-left: 77%;	
}

#retext{
	width: 50%;
}

</style>
</head>
<body>
	<form name="frm" method="get">
		<div id="main">

			<div id="info">
				<h2>그룹명</h2>
				<h5>아이디(이름) 외 몇명</h5>
				<%--  	   	 <c:forEach var="i" items="${list }">
		      <h2>${i.grouopno } (그룹이름)</h2>
		      <h5>${i.memberno } (외 몇명)</h5>
	      
	      </c:forEach>  --%>
				<div id="select">
					<h3>전체 멤버 사진 파일 일정 노트 요청</h3>
					<h5>애는 각각 누르면 div id=section에 가져오기!</h5>
				</div>
			</div>


			<div id="section">

				<div id="insert">
					<h3>글쓰기 일정 요청 투표</h3>
					<h3>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat est quia molestiae ullam quibusdam omnis quasi harum beatae voluptas magnam sed eligendi rerum error asperiores tenetur ab officiis exercitationem aliquam.</h3>
				</div>

				<c:forEach var="b" items="${list }">
					<%-- <h3>${i.groupno } (그룹이름)</h3> --%>

					<div id="board">
						<div id="z">
							<input type="hidden" name="notice" />
						</div>
						<div id="a">
							<h4>${b.memberno }(멤버아이디, 멤버이름)</h4>
							<h5>${b.boarddate }</h5>
						</div>

						<div id="b">
							<h4>${b.boardcontents }</h4>
						</div>

						<div id="c">
							<input type="button" value="댓글" id="re" />
							<button>
								<img src="/resources/assets/img/like.png" id="like" class="lh">
							</button>
							<button>
								<img src="/resources/assets/img/hate.png" id="hate" class="lh">
							</button>
							
							
							<button id="bookmark">
								<img src="/resources/assets/img/bookmark_before.png" alt="bookmark" class="lh"/>
							</button>
							
							<button id="more">
								<img src="/resources/assets/img/more.png" alt="bookmark" class="lh"/>
							</button>
							
							<!-- <button>
							<img src="/resources/assets/img/bookmark_after.png" alt="" />
							</button> -->
														
							
						</div>

						<div id="d">
							<input type="text" name="" id="retext" placeholder="댓글을 입력하세요" />
						</div>
					</div>
				</c:forEach>
			</div> <!-- section end -->
		</div>
	</form>

</body>
</html>