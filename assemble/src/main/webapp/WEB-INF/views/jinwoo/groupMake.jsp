<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/assemble.io/${mi_assembleName}/header"></c:import>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>group Make.jsp</title>
</head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
    $('#content').keyup(function (e){
        var content = $(this).val();
        $('#counter').html(content.length + '/20자');
    });
    $('#content').keyup();
   
    $("#fileup").click(function() {
      
       var img = document.getElementsByClassName("img1");
        
       for(var i=0; i<$(".img1").length ; i++ ){
          
            var j = i+1;
             img[i].src = "resources/image/"+j+".jpg";
          
          
       } 
          
       
      
      });
    
   $(".img1").click(function() {
      var img = document.getElementsByClassName("img1");
      
        
       for(var i=0; i<$(".img1").length ; i++ ){
          
          if(img[i] == this){
             img[i].src = "resources/image/check.png";
             
          }else{
             var j = i+1;
             img[i].src = "resources/image/"+j+".jpg";
          }
          
       } 
          
       
      
      });
   
   $("#grbtn").click(function(){
			 	
		document.grfrm.action = "/insertGroupOk";
		document.grfrm.submit();		
		
	}); 
   
   
   
   $(function() {
      init();
   })
   
   function init() {
      $fileBox = $('.input-file');
      fileLoad(); 
   }
   
   function fileLoad() { 
      $.each($fileBox, function(idx){ 
         var $this = $fileBox.eq(idx),
         $btnUpload = $this.find('[type="file"]'),
         $label = $this.find('.file-label'); 
         
      $btnUpload.on('change', function() {
         if(window.FileReader){  // modern browser
            var filename = $(this)[0].files[0].name;
         } else {  // old IE
             var filename = $(this).val().split('/').pop().split('\\').pop();  // 파일명만 추출
         }

          // 추출한 파일명 삽입
         $(".file-name").val(filename); })
         
      $btnUpload.on('focusin focusout', function(e) {
         e.type == 'focusin' ? $label.addClass('file-focus') : $label.removeClass('file-focus'); 
      })
   })
   
   }





});


</script>

<style>
.line {width: 100%; border-bottom: 2px solid #B2EBF4; text-align: left; margin-left: 0px; margin-top: -15px; size: 0px;}


.mainDiv {width: 100%; height: 7%;}

.mainh2 {font-size: 20px; margin-left: 35px;}

.secondDiv {width: 95%; height: 89%; padding: 5% 0 0 5%;}

.secondDiv2{background-color: white; width: 95%; height: 90%; }

#group1 {width:100%; height: 17%; }

#group2 {width:100%; height: 10%; }

#group3 {width:100%; height: 20%; }

#group4 {width:100%; height: 35%; }

#group5 {width:100%; height: 18%; }

.group1-1 {width:20%; height: 100%; background-color: white; float: left;}

.group1-2 {width:80%; height: 100%; float: left;}
input[type="radio"] {
    display:none;
}

input[type="radio"] + label {

    font-family:Arial, sans-serif;
}

input[type="radio"] + label span {
    display:inline-block;
    width:19px;
    height:19px;
    margin:-2px 10px 0 0;
    vertical-align:middle;
    background:url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/check_radio_sheet.png) -38px top no-repeat;
    cursor:pointer;
}

input[type="radio"]:checked + label span {
    background:url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/210284/check_radio_sheet.png) -57px top no-repeat;
}

.wrap {
    width: 75%;
    height:60%;
    display: inline-block;
}
.wrap input {
    width: 100%;
    height: 60%;
    font-size: 15px;
    background-color: #F6F6F6;

}

#counter {
  font-size: 15px;
  margin-left: 20px;
}

.cuimg {
   width: 24%;
   height: 39%;
   float: left;

}

.img1{
   width: 100%;
   height: 100%;
}




/* input file type */
.input-file {
  display: inline-block;
}

.input-file [type="file"] {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0 none;
}
.input-file .file-label {
  display: inline-block;
  min-width: 53px;
  height: 27px;
  line-height: 24px;
  padding: 0 10px;
  border-radius: 2px;
  font-size: 13px;
  background-color: #333;
  color: #fff;
  text-align: center;
}
.input-file .file-name {

  width: 90%;
}  
  
.grbutton {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
  background-color: white; 
  color: black; 
  border: 2px solid #B2EBF4;

}

.grbutton:hover {
  background-color: #B2EBF4;
  color: white;
}

#main {
   width: 50%;
   height: 100%;
   position: absolute;
   /*     background: white; */
   margin-top: 5%;
   margin-bottom: 5%;
   margin-left: 25%;
}

#bottom-line {
	width: 100%; height:500px; border-bottom: 2px solid #B2EBF4; text-align: left;
}

</style>

<body>
<div id="main">
 
 
<div style="width: 100%; height: 840px; ">
   <div class="mainDiv">
      <div class="mainh2"><h2>그룹 만들기</h2></div>
      <hr class="line" />
   </div>
   
   <form name="grfrm" enctype="multipart/form-data">
   <div class="secondDiv">
      <div class="secondDiv2">
         <div id="group1">
            <div class="group1-1">

               <span>그룹 설정</span>
            </div>
            <div class="group1-2">
               <div>
                  <input type="radio" id="r1" name="rr" />
                   <label for="r1"><span></span>공개 그룹</label>
                   <br />
                   <span style="font-size: 12px;">&emsp;&emsp;&nbsp;with 아지트 멤버라면 누구나 이 그룹을 볼 수 있습니다</span>
                   <br />
                </div>
                <div style="margin-top: 10px">
                   <input type="radio" id="r2" name="rr" />
                   <label for="r2"><span></span>비공개 그룹</label>
                   <br />
                   <span style="font-size: 12px;">&emsp;&emsp;&nbsp;초대를 받은 사람만 이 그룹을 볼 수 있습니다</span>
                </div>
            </div>
         
         </div>
         
         <div id="group2">
            <div class="group1-1" style="padding-top: 15px;">
  
               <span>그룹명</span>
            </div>
            <div class="group1-2" style="padding-top: 15px;">

                  <div class="wrap">
                     <input type="text" name="grName" id="content" maxlength="19.5" />
                    <!--   <textarea id="content" maxlength="20"></textarea> -->
                  </div>
                      <span id="counter">###</span>
            </div>
         
         </div>
         
         <div id="group3">
            <div class="group1-1" style="padding-top: 15px;">
 
            <span>그룹 설명</span>
            </div>
            <div class="group1-2" style="padding-top: 15px;">
               <div style="width: 100%; height: 70%;">
                  <textarea style="resize: none;" rows="6%" cols="72%"></textarea>
               </div>
               <div style="margin-top: 10px;">
                  <input type="radio" id="r3" name="rn" />
                   <label for="r3"><span></span>항상 펼침</label>
                   
                   <input type="radio" id="r4" name="rn" />
                   <label for="r4"><span></span>수정되면 펼침</label>
                   
                </div>
            </div>
         
         </div>
         
         <div id="group4">
            <div class="group1-1" style="padding-top: 15px;">
     
               <span>커버 이미지</span>
            </div>
            <div class="group1-2" style="padding-top: 15px;">
                  <div style="width: 65%; height: 100%; float: left;">
               
                   <!--   <div style="width: 100%; height: 10%;" >
                        <input type="radio" id="r5" name="rt" />
                            <label for="r5"><span></span>이미지 선택</label>
                      </div>
                      <div style="width: 100%; height: 87%; margin-top: 3%;">
                         <div class="cuimg"><img src="resources/image/1.jpg" alt="" class="img1" /></div>
                         <div class="cuimg"><img src="resources/image/2.jpg" alt="" class="img1" /></div>
                         <div class="cuimg"><img src="resources/image/3.jpg" alt="" class="img1" /></div>
                         <div class="cuimg"><img src="resources/image/4.jpg" alt="" class="img1" /></div>
                         <div class="cuimg"><img src="resources/image/5.jpg" alt="" class="img1" /></div>
                         <div class="cuimg"><img src="resources/image/6.jpg" alt="" class="img1" /></div>
                         <div class="cuimg"><img src="resources/image/7.jpg" alt="" class="img1" /></div>
                         <div class="cuimg"><img src="resources/image/8.jpg" alt="" class="img1" /></div>
                      </div>
                   
                   </div>
                    -->
                  
               
               <div style="width: 75%; height: 100%; float: left;" >
                  <div style=" width: 100%; height: 10%; ">
                     <input type="radio" id="r6" name="rt" />
                      <label for="r6"><span id="fileup"></span>직접 등록</label>
                      
                  </div>
                  <!-- <div style="width: 100%; height: 90%;"> -->
                     <span style="font-size: 12px;">730 x 175 사이즈로 제작해주세요
                         <br />(300kb 미만 jpg, gif, png)</span>
                         
                  <div class="input-file">
                    <input type="text" readonly="readonly" class="file-name" />
                    <label style="margin-top: 3px;" for="upload02" class="file-label">찾아보기</label>
                    <input type="file" name="uploadFile" id="upload02" class="file-upload" />
                  </div>
                  <!-- </div> -->
               </div>
            
            </div>
          </div>
         </div>
         
         <div id="group5">
         
            <div class="group1-1" style="padding-top: 15px;">
   
               <span>초대 권한</span>
            </div>
            <div class="group1-2" style="padding-top: 15px;">
               <input type="checkbox" name="" id="" />
               <span>그룹 멤버들에게 허용</span><br />
               <span style="font-size: 12px;">&emsp;&emsp;그룹마스터가 아닌 다른 멤버들도 그룹에 새로운 멤버를 초대할 수 있도록 허용합니다.</span>
               
            </div>
         
         </div>

        
        <div id="bottom-line"></div>
        
         <div style="text-align: center;">
            <input class="grbutton" id="grbtn" type="button" value="등록" />
              <input class="grbutton" type="reset" value="취소" />
         </div>
   
   </div>
   </div>
   </form>
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