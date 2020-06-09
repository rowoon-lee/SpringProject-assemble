<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/assemble.io/avengers/header"></c:import>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>wall.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
     function bookMark(){
    	 var bm = document.getElementById('bk');
    	 if(bm.src.match("before")){
    		 bm.src = "/resources/assets/img/bookmark_after.png";
    	 }else{
    		 bm.src = "/resources/assets/img/bookmark_before.png";
    	 }
     }
     
     $(function(){        
      $(".btn").click(function(){
         
         
          $(".bno").each(function(index){         
            var bno = $(this).val();
            console.log(bno);         
         });
         
          document.frm.action = "selectBoard";
         document.frm.submit();
      });
      
      
      //좋아요
/*       $("#likeb").click(function(){
    	  document.frm.action = "/like.do";
    	  document.frm.submit();
      }); */
      
     
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
	border: 1px solid #CCCCCC;
	margin-bottom: 30px;
}

#board{
	padding: 20px;
	border: 2px solid #F2F2F2; 
	background-color: white;
	margin-bottom : 30px;
	border: 1px solid #CCCCCC;
/* #F2F2F2; */
}
#a{
	border-bottom : 1px solid #CCCCCC;
}
#d{
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
	<form name="frm" method="get">
		<div id="main">

			<div id="info">
				<h2>그룹명</h2>
				<h5>아이디(이름) 외 몇명</h5>

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
					<div id="board">
						<div id="z">
							<c:if test="${b.boardnotice == 1}">
								<img src="/resources/assets/img/star.png" alt="공지글"  class="lh"/>
								 <b> 공지글</b>
							</c:if>
							
						</div>
						<div id="a">
							<h4>${b.memberno }(멤버아이디, 멤버이름)</h4>
							<h5>${b.boarddate }</h5>
						</div>

						<div id="b">
							<h4>${b.boardcontents }</h4>
							
							<h5>좋아요 : ${b.boardlike }</h5>
							<h5>싫어요 : ${b.boardhate }</h5>
							<h5>요청인지 : ${b.requestboolean }</h5>
						</div>	
						<div id="c">
							<input type="button" value="댓글" id="re" />
							<button class="bt">
								<img src="/resources/assets/img/like.png" id="like" class="lh">
								<h5 id="count"></h5>
							</button>
							<button class="bt">
								<img src="/resources/assets/img/hate.png" id="hate" class="lh">
							</button>
							
							
							<button id="bookmark" class="bt" id="likeb">
								<img src="/resources/assets/img/bookmark_before.png" alt="bookmark" id="bk" class="lh"/>
							</button>
							
							<button class="bt" id="hateb">
								<img src="/resources/assets/img/more.png" alt="more" class="lh"/>
							</button>
							
							<!-- <button>
							<img src="/resources/assets/img/bookmark_after.png" alt="" />
							</button> -->
														
							
						</div>

						<div id="d">
							<input type="text" name="" id="retext" placeholder=" 댓글을 입력하세요" />
						</div>
					</div>
				</c:forEach>
			</div> <!-- section end -->
		</div>
	</form>

    <script src="/resources/assets/js/jquery.js"></script> 
    <script src="/resources/assets/js/jquery-1.8.3.min.js"></script> 
    <script src="/resources/assets/js/bootstrap.min.js"></script> 
      <script class="include" type="text/javascript" src="/resources/assets/js/jquery.dcjqaccordion.2.7.js"></script> 
     <script src="/resources/assets/js/jquery.scrollTo.min.js"></script> 

<!--     common script for all pages -->
    <script src="/resources/assets/js/common-scripts.js"></script>


</body>
</html>