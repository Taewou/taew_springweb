<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<base href="${pageContext.request.contextPath }/" />
<title>게시판</title>
</head>
<body>
	<%@ include file="/WEB-INF/jsp/header.jsp"%>
	<h2>편지 보내기</h2>
	<p>
		<a href="./app/members">멤버 목록</a> <a href="./app/main">홈 화면</a>
	</p>
	<form action="./app/letter/add" method="post">
		<p>제목 :</p>
		<p>
			<input type="text" name="title" maxlength="100" style="width: 100%;"
				required>
		</p>
		<p>내용 :</p>
		<p>
			<textarea name="content" style="width: 100%; height: 200px;" required></textarea>
		</p>
		<input type="text" name="receiverId" value="${param.receiverId}"/>
		<input type="text" name="receiverName" value="${param.receiverName}"/>
		<button type="submit">보내기</button>
	</form>
</body>
</html>