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
</script>

<style>


#main {
   width: 50%;
   height: 100%;
   position: absolute;
   /*     background: white; */
   margin-top: 5%;
   margin-bottom: 5%;
   margin-left: 25%;
}


</style>

<body>
<div id="main">
   <form name="frm" action="/insertGroupOk" enctype="multipart/form-data">
     <table>
     	<tr>
     		<td>카테고리명</td>
     		<td>
     			<select name="categorList" id="category">
     				<c:forEach var="i" items="${categoryList2 }">
     					<option value="${i.categoryno }" >${i.categoryname }</option>
     				</c:forEach> 
     			</select>
     					
     		</td>
     	</tr>
     	<tr>
     		<td>그룹명</td>
     		
     		<td><input type="text" name="groupname" id="groupname" /></td>
     	</tr>
     </table>
     <input type="submit" value="등록" />
     </form>

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