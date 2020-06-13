<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/assemble.io/${mi_assembleName}/header"></c:import>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>wall.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
     //bookmark click 시 변경
     function imgchange(){
    	 var img = document.getElementById('bk');
    	 if(img.src.match("before")){
    		 img.src = "/resources/assets/img/bookmark_after.png";
    		 
    		 /* location.href="/addBookmark"; */
    	 }
     }    
     
    	 //댓글달기
	     $(function(){
		     $(".submit").click(function(){
		        
		       // console.log(this.parentNode.childNodes);
		        
		        var bno = this.parentNode.childNodes[1].value;
		        var groupno = this.parentNode.childNodes[3].value;
		        var categoryno = this.parentNode.childNodes[5].value;
		        var recontents = this.parentNode.childNodes[7].value;
	
		        document.location.href = "insertComment?bno="+bno+"&groupno="+groupno+"&categoryno="+categoryno+"&contents="+recontents;
		     });
	
			//게시글 option메뉴
			$('.option .sub').hide(); //처음에는 안보이게
				$('.option').click(function(){
	 				console.log(this.parentNode.childNodes);
					$('.option .sub').toggle();

			});
		});
   	 
		//댓글 보이기	
		/* $(document).ready(function(){ */
		$(function(){
			$(".re").click(function(){
				
				
				var bno = this.parentNode.childNodes[1].value;
			    var groupno = this.parentNode.childNodes[3].value;
	    
			    $.ajax({
					    	url: "/assemble.io/{mi_assembleName}/g/{groupno}/selectRecomment",
					    	type: 'POST',
					    	data: {"bno": bno, "groupno" : groupno},
					    	dataType: "json",
					    	success: function(recomment){
					    		console.log("success view");
					    		console.log(recomment);
					    			//document.getElementById("#"+bno).childNodes.length;
					    			
					    		 if(document.getElementById(bno).childElementCount==0){ 
						    		for(var i=0; i<recomment.length; i++){
										var retext = 
											'<div id="s0">'
												+'<div id="s1">'
													+'<div id="s1a">'+recomment[i].reid+"님이 쓴 댓글"+'</div>'
													+'<div id="s1b">'+recomment[i].redate+'</div>'+
												'</div>' //s1 end
												+'<div id="s2">'+recomment[i].recontents+'</div>'+ //s2 end
											'<div>';
										/* '<h5>'+recomment[i].reid+'</h5>'
										+'<h5>'+recomment[i].redate+'</h5>'
										+'<h5>'+recomment[i].recontents+'</h5>'
										+'</div>'; */
											
								    	$(retext).appendTo("#"+bno);					    	
								    }
					    		 }else{
					    			
					    		 $("#" +bno).empty();		
					    		} 	
					    	},		
					    	error : function(recomment){
					    		console.log("error view");
					    		console.log(recomment);
					    	}
					  }); 
 			});  	
		}); 
		  
		  
		//요청 상태 변화
   		$(function(){
			var r1 = $('#button3');
			var r2 = $('#button2c');
			var r3 = $('#button2e');
			
			var i1 = $('#button2a');
			var i2 = $('#button4');
			var i3 = $('#button2f');
			
			var e1 = $('#button2b');
			var e2 = $('#button2d');
			var e3 = $('#button5');
			
			 //if(document.getElementById(bno).childE){ 
			$(".req").click(function(){
			var bno = this.parentNode.childNodes[1].value + "b";
				//console.log(bno);
				if(document.getElementById = bno){
				
				$(".req").click(function(){
					r1.css('background-color','red');	
					r2.css('background-color','red');	
					r3.css('background-color','red');	
					
					i1.css('background-color','#EAEAEA');	
					i2.css('background-color','#EAEAEA');		
					i3.css('background-color','#EAEAEA');	
					
					e1.css('background-color','#EAEAEA');	
					e2.css('background-color','#EAEAEA');	
					e3.css('background-color','#EAEAEA');		
				});
			
				$(".ing").click(function(){
					r1.css('background-color', '#EAEAEA');
					r2.css('background-color', '#EAEAEA');
					r3.css('background-color', '#EAEAEA');

					i1.css('background-color', 'green');
					i2.css('background-color', 'green');
					i3.css('background-color', 'green');

					e1.css('background-color', '#EAEAEA');
					e2.css('background-color', '#EAEAEA');
					e3.css('background-color', '#EAEAEA');

				});

				$(".end").click(function() {
					r1.css('background-color', '#EAEAEA');
					r2.css('background-color', '#EAEAEA');
					r3.css('background-color', '#EAEAEA');

					i1.css('background-color', '#EAEAEA');
					i2.css('background-color', '#EAEAEA');
					i3.css('background-color', '#EAEAEA');

					e1.css('background-color', 'gray');
					e2.css('background-color', 'gray');
					e3.css('background-color', 'gray');

				});
			}//if end
		});
	});
</script>
<style type="text/css">
#main {
	width: 50%;
	height: 100%;
	position: absolute;
	/*     background: white; */
	margin-top: 7%;
	margin-bottom: 5%;
	margin-left: 25%;
	marg
}

#info {
	border: 2px solid #F2F2F2;
	background-color: pink;
	margin-bottom: 15px;
	padding-bottom: 0px;
}

#select {
	background-color: white;
}

#insert {
	height: 100%;
	border: 1px solid #CCCCCC;
	margin-bottom: 30px;
}

#board {
	padding: 20px;
	border: 2px solid #F2F2F2;
	background-color: white;
	margin-bottom: 30px;
	border: 1px solid #CCCCCC;
	/* #F2F2F2; */
}

#a {
	border-bottom: 1px solid #CCCCCC;
}

#d {
	margin-top: 10px;
}

#retext {
	width: 91%;
	border: 1px solid #CCCCCC;
}

.re {
	background-color: white;
	border: none;
	border: 1px solid #CCCCCC;
	margin-right: 1%;
}

#notice {
	width: 22px;
}

.lh {
	width: 22px;
	margin-left: 1.5%;
}

.more {
	width: 22px;
}

.submit {
	margin-left: 2%;
}

#boarddate {
	margin-left: 80%;
}

#c1 {
	width: 70%;
	display: inline;
	float: left;
}

#c2 {
	margin-left: 82%;
}

.menubtn {
	border: none;
	background-color: white;
	border: 1px solid #CCCCCC;
}

/* 댓글 */
#s0{
	border: 1px solid #CCCCCC;
	font-size: 14px;
}

#s1 {
	border-bottom: 1px solid #CCCCCC;
	background-color: #F2F2F2;
	padding: 0.6%;

}

#s1a {
	display: inline;
	float: left;
	margin-right: 70%;

}
#s2{
	padding: 1%;
}

.btn-group {margin: 0;}
#button2a, #button2b, #button2c, #button2d, #button2e, #button2f {
  background-color: #EAEAEA; /* Green */
  border: none;
  color: white;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;

  width: 70px;
  height: 25px;
  float: left;
}
 #button3 {
  background-color: #FF0000; 
  border: none;
  color: white;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;

  width: 70px;
  height: 25px;
  float: left;
}

#button4 {
  background-color: green; 
  border: none;
  color: white;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;

  width: 70px;
  height: 25px;
  float: left;
}

#button5 {
  background-color: gray; 
  border: none;
  color: white;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;

  width: 70px;
  height: 25px;
  float: left;
}





/* .option a{cusor:pointer;}
.option .hide{display:none;} */
</style>
</head>
<body>
	<form name="frm" method="get">
		<div id="main">
			<div id="info">	
					<h2>${groupname }</h2>
					<h5>${mastername }( ${masterid} ) 외 몇명</h5> 
			<div id="select">
				<h3>전체 멤버 사진 파일 일정 노트 요청</h3>
				<h5>애는 각각 누르면 div id=section에 가져오기!</h5>
			</div>
		</div>


			<div id="section">	

				<div id="insert">
					<jsp:include page="../jinwoo/board.jsp"></jsp:include>
					<!-- <h3>글쓰기 일정 요청 투표</h3>
					<h3>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat est quia molestiae ullam quibusdam omnis quasi harum beatae voluptas magnam sed eligendi rerum error asperiores tenetur ab officiis exercitationem aliquam.</h3> -->
				</div>

				<c:forEach var="b" items="${thirdlist }">
					<div id="board">
						<div id="z">
							<c:if test="${b.boardnotice == 1}">
								<img src="/resources/assets/img/star.png" alt="공지글"  id="notice"/>
								 <b> 공지글</b>
							</c:if>
					</div>
						<div id="a">
							<!-- 프사 추가 하려면 Groupboard_MemberinfoDTO에 프사 추가, MAPPER에 추가하기 -->
							<h4>${b.mi_memname } ( ${b.mi_memid } )</h4>
							<h5 id="boarddate">${b.boarddate }</h5>
						</div>

						<div id="${b.bno }b">
							<h4>${b.boardcontents }</h4>
							
							<c:if test="${b.requestboolean == 1 }">
								<c:if test="${b.reqstatus == 0}">
								 	<div class="btn-group" style="float: right;">
								 		<%-- <input type="hidden" name="req_bno" value="${b.bno}"/> --%>
										<input type="button" value="요청" id="button3" class="req"/>
										<input type="button" value="진행" id="button2a" class="ing"/>
										<input type="button" value="종료" id="button2b" class="end"/>
									</div>
								</c:if>
								<c:if test="${b.reqstatus ==1 }">
									<div class="btn-group" style="float: right;">
										<input type="button" value="요청" id="button2c" class="req"/>
										<input type="button" value="진행" id="button4" class="ing"/>
										<input type="button" value="종료" id="button2d" class="end"/>
										
									</div>
								</c:if>
								<c:if test="${b.reqstatus ==2 }">
									<div class="btn-group" style="float: right;">
										<input type="button" value="요청" id="button2e" class="req"/>
										<input type="button" value="진행" id="button2f" class="ing"/>
										<input type="button" value="종료" id="button5" class="end"/>
									</div>
								</c:if>
								<%-- <h5>요청진행상태 : ${b.reqstatus }</h5> --%>	
							</c:if>
							
							<h5>좋아요 : ${b.boardlike }</h5>
							<h5>싫어요 : ${b.boardhate }</h5>
							<c:if test="${b.filename != null }">
								<h5>파일명 : ${b.filename }</h5>
							</c:if>
							
						</div>	
						<div id="c">
							<div id="c1">
								<input type="hidden" name="bno" value="${b.bno}"/>
								<input type="hidden" name="groupno" value="${b.groupno}"/>
								<input type="button" value="댓글" class="re" />
							
								<img src="/resources/assets/img/like.png" class="lh">
								
								<img src="/resources/assets/img/hate.png" class="lh">
					
								<img src="/resources/assets/img/bookmark_before.png" id="bk" class="lh" onclick="imgchange()"/>																			
							</div>
							<div id="c2">
								<ul class="option" >
									<li><img src="/resources/assets/img/more.png" class="more" />
										<ul class="sub">
											<!-- 공지글 일시는 공지취소 -->
											<button class="menubtn"><li>공지등록</li></button>
											<!-- 세션과 작성자 일치시 -->
											<button class="menubtn"><li>수정하기</li></button>
											<button class="menubtn"><li>삭제하기</li></button>
										</ul>
									</li>
								</ul>
							</div>
						</div>
						
						<div class="e" id="${b.bno }">
							<!-- 댓글 div -->
						</div>

						<div id="d">
							<input type="hidden" name="bno" value="${b.bno }"/>
							<input type="hidden" name="groupno" value="${b.groupno }"/>
							<input type="hidden" name="categoryno" value="${b.categoryno }"/>
							<input type="text" name="" id="retext" placeholder=" 댓글을 입력하세요" />
							<input type="button" value="등록" class="submit"/>
						</div>
						
					</div>
				</c:forEach>
			</div> <!-- section end -->
		</div>
	</form>
<script src="/resources/assets/js/jquery.js"></script>
<script src="/resources/assets/js/jquery-1.8.3.min.js"></script>
<script src="/resources/assets/js/bootstrap.min.js"></script>
<script class="include" type="text/javascript"
	src="/resources/assets/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="/resources/assets/js/jquery.scrollTo.min.js"></script>

<!--     common script for all pages -->
<script src="/resources/assets/js/common-scripts.js"></script>
</body>
</html>