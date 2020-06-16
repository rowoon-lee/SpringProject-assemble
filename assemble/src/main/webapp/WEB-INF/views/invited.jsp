<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/assemble.io/${mi_assembleName}/header"></c:import>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>invite</title>

<script type="text/javascript" src="/resources/info/js/jquery.slim.min.js"></script>
<!-- <link type="text/css" rel="stylesheet" href="/resources/info/css/bootstrap.min.css" /> -->
<script type="text/javascript" src="/resources/info/js/bootstrap.bundle.min.js"></script>

<style type="text/css">
body{background-color: none;}
.main {
   width: 50%;
   height: 100%;
   position: absolute;
   margin-top: 10%;
   margin-bottom: 5%;
   margin-left: 25%;
   clear: none;
   background-color: none;
}
.contents{
    border: 1px solid #CCCCCC;
   padding: 0;
   margin: 0;
   background-color: none;
}
.form-invitation{
   width: 100%;
   padding: 10px;
   background-color: white;
}
.invitation{
   min-height: calc(50vh);
   margin: 0 auto;
   padding: 0;
   clear: none;
}
.title {
   margin: 10px 0 20px;
    padding-bottom: 10px;
    border-bottom: 2px solid #7a7a7a;
    color: #383838;
    font-size: 1.5rem;
    line-height: 1.25;
    vertical-align: middle;
    clear: none;
}

.invitation-form {
   width: 100%;
   margin-top: 2rem;
   vertical-align: middle;
   clear: none;
   display: inline-block;

}
.form-group row{display: inline-block;}
#adr, #info {
   width: 100px;
   clear: none;
   margin-left: 200px;
}
.invitation-form input {
   margin-bottom: 1rem;
   width:450px;
   clear: none;
   margin-left: 300px;
}
.invitation-form button {
   border-radius: 2rem;
   margin-top: 3rem;
   margin-bottom: 3rem;
   vertical-align: middle;
   width: 350px;
   margin: 0 auto;
   clear: none;
   background-color: #1596aa;  
   color: white;
}

</style>

</head>
<body>
<div class="main">
<div class="contents">
   <div class="form-invitation">
      <div class="title">
         <h2 class="font-weight-bold"><b>초대하기</b></h2>
      </div>
      
      <div class="invitation-form">
         <form>
         
              <div class="form-group row">
               
                <label for="colFormLabel" class=" col-form-label" id="adr">이메일 주소 <br>&nbsp;(필수)</label>
                  <input type="email" class="form-control" id="memEmail" placeholder="이메일 주소" required />
                
              
                <label for="colFormLabel" class=" col-form-label" id="info">추가 정보</label>
                  <input type="text" class="form-control" id="memTeam" placeholder="소속부서">
                  <input type="text" class="form-control" id="memGrade" placeholder="직급">
                  <input type="text" class="form-control" id="memPhone" placeholder="휴대폰 번호">
             
           <br/>
               <button class="btn btn-lg btn-block" type="submit">초대하기</button>
        
              </div>

         </form>

      </div>
   </div>
</div>

</div>
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