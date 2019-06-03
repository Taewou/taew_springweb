<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<base href="${pageContext.request.contextPath }/" />
<title>받은 목록</title>
<style type="text/css">
table {
	margin-top: 10px;
	border-collapse: collapse;
	border-top: 1px solid blue;
	border-bottom: 1px solid blue;
	width: 100%;
}
th, td {
	padding: 5px 0;
}
th {
	border-bottom: 1px solid gray;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/jsp/header.jsp"%>
	<h2>받은 편지함</h2>
	<p>전체 ${totalCount }건</p>
	<form action="./app/article/list">
		<input type="number" name="page" value="${param.page }" placeholder="페이지"
			min="1" max="${totalCount / 20 + 1 }" step="1" style="width: 50px;">
		<button type="submit">조회</button>
	</form>

	<table>
		<thead>
			<tr>
				<th>메일 번호</th>
				<th>메일 제목</th>
				<th>발신인 (발신회원번호)</th>
				<th>받은 일시</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="letter" items="${letters}">
				<tr>
					<th><a href="./app/letter/view?letterId=${letter.letterId }">${letter.letterId }</a></th>
					<th><a href="./app/letter/view?letterId=${letter.letterId }">${letter.title }</a></th>
					<th>${letter.senderName }(${letter.senderId })</th>
					<th>${letter.cdate }</th>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</head>
</html>