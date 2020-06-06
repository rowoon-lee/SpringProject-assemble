<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>wall.jsp</title>
</head>
<body>
	<h2>그룹별 글 목록</h2>
	<c:forEach var="i" items="list">
		<table>
			<tr>
				<th>게시글번호</th>
				<td>${i.bno }</td>
			</tr>
			<tr>
				<th>그룹번호</th>
				<td>${i.groupno }</td>
			</tr>
			<tr>
				<th>카테고리번호</th>
				<td>${i.categoryno }</td>
			</tr>
			<tr>
				<th>멤버번호</th>
				<td>${i.memberno }</td>
			</tr>
			<tr>
				<th>게시일</th>
				<td>${i.boarddate }</td>
			</tr>
			<tr>
				<th>게시글</th>
				<td>${i.boardcontents }</td>
			</tr>
			<tr>
				<th>좋아요</th>
				<td>${i.boardlike }</td>
			</tr>
			<tr>
				<th>싫어요</th>
				<td>${i.boardhate }</td>
			</tr>
			<tr>
				<th>공지여부</th>
				<td>${i.boardnotice }</td>
			</tr>
			<tr>
				<th>요청여부</th>
				<td>${i.requestboolean }</td>
			</tr>
		</table>
	
	</c:forEach>
	

</body>
</html>