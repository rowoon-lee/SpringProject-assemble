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
								    	$(retext).appendTo("#"+bno);					    	
								    }
					    		 }else{
					    		 $("#" +bno).empty();
					    		
					    		} 	
					    	},		
					    	error : function(recomment){
					    		console.log("error view");
					    		console.log(recomment);
					    		if(document.getElementById(bno).childElementCount==0){ 
					    		 var retext = 
										'<div id="s0">'
											+'<div id="s1">' + "현재 댓글이 없습니다." +'</div>' //s1 end
										'<div>';
					    		 $(retext).appendTo("#"+bno);		
					    		}else{
					    		$("#" +bno).empty();
					    		}
					    	}
					    	
				 }); 
 			});  	
		}); 
		  
		  

	//요청 상태 변화
	$(function() {
		var r1 = $('#btnra');
		var r2 = $('#btnrb');
		var r3 = $('.btnrc');

		var i1 = $('#btnia');
		var i2 = $('#btnib');
		var i3 = $('#btnic');

		var e1 = $('#btnea');
		var e2 = $('#btneb');
		var e3 = $('#btnec');

		//if(document.getElementById(bno).childE){
		//////////////////////초기상태 요청일 때 ///////////////////////////////////////
		//요청버튼
		$(".reqa").click(function() {
			var bnoa = this.parentNode.childNodes[1].value + "a";
			var bno = this.parentNode.childNodes[1].value;
			var groupno = this.parentNode.childNodes[3].value;
			var status = this.parentNode.childNodes[5].value;
			console.log("요청");
			console.log(bnoa);

			if (document.getElementById = bnoa) {
				r1.css('background-color', 'red');
				i1.css('background-color', '#EAEAEA');
				e1.css('background-color', '#EAEAEA');
			}
		});//.req click end	
		//진행버튼
		$(".inga").click(function() {
			var bnoa = this.parentNode.childNodes[1].value + "a";
			var bno = this.parentNode.childNodes[1].value;
			var groupno = this.parentNode.childNodes[3].value;
			var status = this.parentNode.childNodes[5].value;
			console.log("진행");
			console.log(bnoa);

			if (document.getElementById = bnoa) {
				r1.css('background-color', '#EAEAEA');
				i1.css('background-color', 'green');
				e1.css('background-color', '#EAEAEA');
			}
		});//.ing click end	
		//종료 버튼
		$(".enda").click(function() {
			var bnoa = this.parentNode.childNodes[1].value + "a";
			var bno = this.parentNode.childNodes[1].value;
			var groupno = this.parentNode.childNodes[3].value;
			var status = this.parentNode.childNodes[5].value;
			console.log("종료");
			console.log(bnoa);

			if (document.getElementById = bnoa) {
				r1.css('background-color', '#EAEAEA');
				i1.css('background-color', '#EAEAEA');
				e1.css('background-color', 'gray');
			}
		});//.end click end
		
		//////////////////////초기상태 진행일 때 ///////////////////////////////////////
		//요청버튼
		$(".reqb").click(function() {
			var bnob = this.parentNode.childNodes[1].value + "b";
			var bno = this.parentNode.childNodes[1].value;
			var groupno = this.parentNode.childNodes[3].value;
			var status = this.parentNode.childNodes[5].value;
			console.log("요청");
			console.log(bnob);

			if (document.getElementById = bnob) {
				r2.css('background-color', 'red');
				i2.css('background-color', '#EAEAEA');
				e2.css('background-color', '#EAEAEA');
			}
		});//.req click end	
		//진행버튼
		$(".ingb").click(function() {
			var bnob = this.parentNode.childNodes[1].value + "b";
			var bno = this.parentNode.childNodes[1].value;
			var groupno = this.parentNode.childNodes[3].value;
			var status = this.parentNode.childNodes[5].value;
			console.log("진행");
			console.log(bnob);

			if (document.getElementById = bnob) {
				r2.css('background-color', '#EAEAEA');
				i2.css('background-color', 'green');
				e2.css('background-color', '#EAEAEA');
			}
		});//.ing click end	
		//종료 버튼
		$(".endb").click(function() {
			var bnob = this.parentNode.childNodes[1].value + "b";
			var bno = this.parentNode.childNodes[1].value;
			var groupno = this.parentNode.childNodes[3].value;
			var status = this.parentNode.childNodes[5].value;
			console.log("종료");
			console.log(bnob);

			if (document.getElementById = bnob) {
				r2.css('background-color', '#EAEAEA');
				i2.css('background-color', '#EAEAEA');
				e2.css('background-color', 'gray');
			}
		});//.end click end

//////////////////////초기상태 종료일 때 ///////////////////////////////////////
		//요청버튼
		$(".reqc").click(function() {
			var bnoc = this.parentNode.childNodes[1].value + "c";
			var bno = this.parentNode.childNodes[1].value;
			var groupno = this.parentNode.childNodes[3].value;
			var status = this.parentNode.childNodes[5].value;
			console.log("요청");
			console.log(bnoc);

			if (document.getElementById = bnoc) {
				r3.css('background-color', 'red');
				i3.css('background-color', '#EAEAEA');
				e3.css('background-color', '#EAEAEA');
			}
		});//.req click end	
		//진행버튼
		$(".ingc").click(function() {
			var bnoc = this.parentNode.childNodes[1].value + "c";
			var bno = this.parentNode.childNodes[1].value;
			var groupno = this.parentNode.childNodes[3].value;
			var status = this.parentNode.childNodes[5].value;
			console.log("진행");
			console.log(bnoc);

			if (document.getElementById = bnoc) {
				r3.css('background-color', '#EAEAEA');
				i3.css('background-color', 'green');
				e3.css('background-color', '#EAEAEA');
			}
		});//.ing click end	
		//종료 버튼
		$(".endc").click(function() {
			var bnoc = this.parentNode.childNodes[1].value + "c";
			var bno = this.parentNode.childNodes[1].value;
			var groupno = this.parentNode.childNodes[3].value;
			var status = this.parentNode.childNodes[5].value;
			console.log("종료");
			console.log(bnoc);

			if (document.getElementById = bnoc) {
				r3.css('background-color', '#EAEAEA');
				i3.css('background-color', '#EAEAEA');
				e3.css('background-color', 'gray');
			}
		});//.end click end

		
	});//function end
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

/* .btn-group {margin: 0;}
.btn-group {margin: 0;}
.btnra, .btnrb, .btnrc,
.btnia, .btnib, .btnic, 
.btnea, .btneb, .btnec {
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

.btnia, .btnea, .btnrb, .btneb, .btnrc, .btnic{
 background-color: #EAEAEA;
}

.btnra {
  background-color: red; 
}

.btnib {
  background-color: green; ;
}

.btnec {
  background-color: gray; 
} */
#btn-group {margin: 0;}
#btn-group {margin: 0;}
#btnra, #btnrb, #btnrc,
#btnia, #btnib, #btnic, 
#btnea, #btneb, #btnec {
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

#btnia, #btnea, #btnrb, #btneb, #btnrc, #btnic{
 background-color: #EAEAEA;
}

#btnra {
  background-color: red; 
}

#btnib {
  background-color: green; ;
}

#btnec {
  background-color: gray; 
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

						<!-- <div id="b"> -->
 						<div id="${b.bno }z"> 
							<h4>${b.boardcontents }</h4>
							
							<c:if test="${b.requestboolean == 1 }">
								<c:if test="${b.reqstatus == 0}">
								 	<div class="btn-group" style="float: right;" id="${b.bno }a">
								 		<input type="hidden" name="req_bno" value="${b.bno}"/> 
								 		<input type="hidden" name="req_groupno" value="${b.groupno}"/> 
								 		<input type="hidden" name="req_status" value="${b.reqstatus}"/> 
										<input type="button" value="요청" id="btnra" class="reqa"/>
										<input type="button" value="진행" id="btnia" class="inga"/>
										<input type="button" value="종료" id="btneb" class="enda"/>
									</div>
								</c:if>
								<c:if test="${b.reqstatus ==1 }">
									<div class="btn-group" style="float: right;" id="${b.bno }b">
										<input type="hidden" name="req_bno" value="${b.bno}"/> 
										<input type="hidden" name="req_groupno" value="${b.groupno}"/> 
								 		<input type="hidden" name="req_status" value="${b.reqstatus}"/> 
										<input type="button" value="요청" id="btnrb" class="reqb"/>
										<input type="button" value="진행" id="btnib" class="ingb"/>
										<input type="button" value="종료" id="btneb" class="endb"/>
										
									</div>
								</c:if>
								<c:if test="${b.reqstatus ==2 }">
									<div class="btn-group" style="float: right;" id="${b.bno }c">
										<input type="hidden" name="req_bno" value="${b.bno}"/>
										<input type="hidden" name="req_groupno" value="${b.groupno}"/> 
								 		<input type="hidden" name="req_status" value="${b.reqstatus}"/>  
										<input type="button" value="요청" id="btnrc" class="reqc"/>
										<input type="button" value="진행" id="btnic" class="ingc"/>
										<input type="button" value="종료" id="btnec" class="endc"/>
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