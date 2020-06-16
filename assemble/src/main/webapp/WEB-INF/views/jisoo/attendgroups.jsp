<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/assemble.io/${mi_assembleName}/header"></c:import>
<!DOCTYPE html>
<html>
<head>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<script src="http://code.jquery.com/jquery-1.11.3.min.js" type="text/javascript" charset="utf-8"></script>

<link rel="stylesheet" type="text/css" href="resources/assets/css/hancss/clicklist.css">  	<!-- css 파일 경로  -->

<meta charset="UTF-8">

<title>참여가능한 그룹.div</title>

</head>
<body>
	
<div class="div0">
	<section class="bookmarks-page">
		<header class="page-header bookmarks-page__header">
		
			<h2 class="page-header__title">
				<span>참여 가능한 그룹</span>											<!-- div 제목  -->
				<span class="page-header__total-count"></span>				<!-- 게시물보이는 갯수 -->
			</h2>
			
			<div class="page-header__info">
			
				<div class="page__options bookmarks-page__options">
					
					<div class="page__options mentions-page__options">
						<button class="option-button1" autofocus="autofocus">전체</button>
					</div>

				</div>
				

				<form class="search-field bookmarks-page__search">
					<fieldset>
						<legend class="screen-out">그룹 검색</legend>
						<input type="text" class="search-field__input" autocomplete="off" autocapitalize="off" name="q" title="검색어 입력" placeholder="그룹 검색" value="">
						
						<button class="search-field__search-button" type="submit">
							<i class="ico ico-search" aria-hidden="true">
								<svg width="16px" height="16px" viewBox="0 0 15 14" version="1.1">
									<g id="search" stroke="none" fill="#565A5F" fill-rule="evenodd">
										<path d="M9.9603736,10.3329493 C8.91643607,11.0870077 7.60676898,11.5357143 6.18487913,11.5357143 C2.77379116,11.5357143 0.00855799453,8.95335668 0.00855799453,5.76785714 C0.00855799453,2.5823576 2.77379116,0 6.18487913,0 C9.5959671,0 12.3612003,2.5823576 12.3612003,5.76785714 C12.3612003,7.09571193 11.8807175,8.31876567 11.0732587,9.29366358 L15,12.9607143 L13.8871149,14 L9.9603736,10.3329493 Z M6.18487913,10.3214286 C8.87784331,10.3214286 11.0609221,8.2827252 11.0609221,5.76785714 C11.0609221,3.25298909 8.87784331,1.21428571 6.18487913,1.21428571 C3.49191494,1.21428571 1.30883613,3.25298909 1.30883613,5.76785714 C1.30883613,8.2827252 3.49191494,10.3214286 6.18487913,10.3214286 Z"></path>
									</g>
								</svg>
							</i>
<!-- 						<span class="ir-pm">검색</span> -->
						</button>
						
					</fieldset>
				</form>
				
			</div>
		</header>
		
		
		<div class="scroll-container scroll-container--window undefined" tabindex="-1" id="div1">
			<div class="bookmarks-page__list-wrap">
			
				<div class="groups__planet-groups-list">
					<c:forEach var="i" items="${list }">
						
							<div class="planet-group-list__item active">
							
								<h3 class="planet-group-list__item-title">
									<a href="/g/300239781/wall">${i.groupname }</a>				<!--   -->
								</h3>
								<p class="planet-group-list__item-description">그룹에 참가해보세요!</p>
								
								<div class="planet-group-list__item-actions" >
									<span class="pull-left">
										<span>
											<span class="text-primary">
											</span>
										</span>
									</span>
									
									<!-- <input type="button" value="참여하기" class="follow-button pull-right unfollowed"/> -->
									<div class="coffee">
										<input type="hidden" name="groupno" value="${i.groupno }"/>
										<input type="hidden" name="categoryno" value="${i.categoryno }"/>
										<input type="hidden" name="n" value="${n}"/>
										<button class="follow-button pull-right unfollowed">
											
											<c:choose>
												<c:when test="${i.memberno eq memberno}">
													<span>나가기</span>
												</c:when>
												<c:otherwise>
													<span>참여하기</span>	
												</c:otherwise>
												
											</c:choose>
										</button>
													
									</div>
									
									<div class="clearfix"></div>
								</div>
								
							</div>
				
						</c:forEach>
					</div>	
				</div>			
			</div>
				
		
		<div class="paginated-list-footer">
		
			<div class="no-content-placeholder no-content-placeholder--visible" id="contents">
				<i class="ico ico-blank" aria-hidden="true">
					<svg width="120px" height="120px" viewBox="0 0 120 120" version="1.1">
						<g id="blank" stroke="none" stroke-width="1" fill="#F5F5F5" fill-rule="evenodd">
							<!-- 이미지 경로~  -->
							<path d="M60,120 L60,120 C26.862915,120 0,93.137085 0,60 C0,26.862915 26.862915,0 60,0 C93.137085,0 120,26.862915 120,60 C120,93.137085 93.137085,120 60,120 L60,120 L60,120 Z M60,111 L60,111 C88.1665222,111 111,88.1665222 111,60 C111,31.8334778 88.1665222,9 60,9 C31.8334778,9 9,31.8334778 9,60 C9,88.1665222 31.8334778,111 60,111 L60,111 L60,111 Z M43.5,54 C47.6421356,54 51,50.6421356 51,46.5 C51,42.3578644 47.6421356,39 43.5,39 C39.3578644,39 36,42.3578644 36,46.5 C36,50.6421356 39.3578644,54 43.5,54 L43.5,54 Z M76.5,54 C80.6421356,54 84,50.6421356 84,46.5 C84,42.3578644 80.6421356,39 76.5,39 C72.3578644,39 69,42.3578644 69,46.5 C69,50.6421356 72.3578644,54 76.5,54 L76.5,54 Z M31.5,74 C31.5,71.790861 33.3000391,70 35.5081293,70 L84.4918707,70 C86.7054994,70 88.5,71.7953562 88.5,74 C88.5,76.209139 86.6999609,78 84.4918707,78 L35.5081293,78 C33.2945006,78 31.5,76.2046438 31.5,74 L31.5,74 Z"></path>
						</g>
					</svg>
				</i>
				<p class="no-content-placeholder__message">참여 가능한 그룹이 없습니다.</p>
			</div>
			
			<!-- 게시물이 생기면 이걸로 바꾸기~~ css 바꾸기~~ --> 
			<div class="paginated-list-footer__no-more-label" id="nocontents">
				<span>더 이상 없음</span>
			</div>
			
		</div>


	</section>
</div>
	
<!-- js -->

<!-- div 바꾸기   -->
<script type="text/javascript">
	
  	$('.option-button1').click(function(){
/*         console.log(this.value); */
	   window.location.href="/attendgroups?order=created&type=";				//다시 원래 페이지로 돌아오기
	  
	   
	});  
 	
</script>



<!-- 그룹 참여하기/나가기에 대한 js [버튼에 대한 js] -->
<script type="text/javascript">

	$(document).ready(function () {
	    $(".follow-button.unfollowed").each(function () {
	   	
	    	$(this).off("click").on("click", function() {
	    	console.log(this.parentNode.childNodes)
	 		   var groupno = this.parentNode.childNodes[1].value;
	 		   var categoryno = this.parentNode.childNodes[3].value;
	 		   var n = this.parentNode.childNodes[5].value;
	 		   
	 		   document.location.href = "/attendOk?groupno="+groupno+"&categoryno="+categoryno ;
	    		
	    		if($(this).hasClass("active") && n==0) {
	    			
	    			$(this).removeClass("active");						//클래스 제거
					$(this).siblings().addClass("active");				//siblings:형제요소들,    removeClass:선택된 클래스의 특성을 없앰
					$(this).text('참여하기');	    			
	    		}else{
	    			$(this).addClass("active");							//클릭된 부분을 정의된 CCS인 active클래스로 적용
	    			$(this).siblings().removeClass("active");			//siblings:형제요소들,    removeClass:선택된 클래스의 특성을 없앰

	    			$(this).text('나가기');	
	    		
	    		} 
	    			
	    			
	    			/* else {
	    			
	    			$(this).addClass("active");							//클릭된 부분을 정의된 CCS인 active클래스로 적용
	    			$(this).siblings().removeClass("active");			//siblings:형제요소들,    removeClass:선택된 클래스의 특성을 없앰
	    			
	    			
	    			$(this).text('나가기');	
	    			 */
	    			
	    		
			});
		});
	});
	
	$(function(){
		$(".follow-button.unfollowed").click(function(){
		   console.log(this.parentNode.childNodes)
		   var groupno = this.parentNode.childNodes[1].value;
		   var categoryno = this.parentNode.childNodes[3].value;
		   
		   document.location.href = "/attendOk?groupno="+groupno+"&categoryno="+categoryno ;
		});
	});


</script>


<script type="text/javascript">
	
	$(document).ready(function () {

		// 게시물이 생기면 footer의 div가 바뀌어야 함.
		//$(this).attr('no-content-placeholder no-content-placeholder--visible','paginated-list-footer__no-more-label');			
		
		if($(".planet-group-list__item").hasClass("active")) {				/* 클래스명은 게시물에서 가져오기~  */
			$("#contents").hide();						/* div 숨기기~  */
			$("#nocontents").show();
		} else {
			$("#contents").show();						/* div 보이기~  */
			$("#nocontents").hide();
		}
		
	});
	
</script> 
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