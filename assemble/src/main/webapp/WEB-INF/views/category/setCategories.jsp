<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
.main{
   width: 50%;
   height: 100%;
   position: absolute;
   margin-top: 5%;
    margin-bottom: 5%;	
    margin-left: 25%;   
}
.contents{
   background-color: white;
   /* border: 1px solid #CCCCCC; */
   margin: 0;
   padding: 0;
}
table{
   font-size: 15px;
   width: 100%;
   border-collapse: collapse;
   border-spacing: 0;

}
tr, th, td{
   border: 1px solid #dcdfe4;
   border-spacing: 0;
   letter-spacing: 1px;
   height: 50px;
   
}
table th{
   background-color: #f5f5f5;
   width: 50%;
}
td{
   padding-left: 20px;
}

td:hover, td:active{
   color: #5a86dd;
}

</style>

</head>
<body>

<div class="main">
   <div class="contents">
      
         <table>
            <thead>
               <tr>
                  <th><b>나의 카테고리</b> 
                  <span><i class="fa fa-book" aria-hidden="true"></i></span>
                  </th>
                  <th>카테고리 이름</th>
               </tr>               
               
            </thead>
            
            <tbody>
               <tr>   
               <!-- 나의 카테고리 -->
                  <td>123</td>
                  
               <!-- 카테고리 이름 -->   
                  <td>456</td>
               </tr>
   
            </tbody>
         </table>
               
      </div>
      
</div>


</body>
</html>