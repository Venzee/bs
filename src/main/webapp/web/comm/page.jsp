<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style type="text/css">
.page {
	margin: 0;
}
.page-info {
	width: 160px;
}
</style>
<ul class="pagination pagination-sm pull-right page">
	<c:if test="${page.pn != 1 }">
		<li><a href="?pn=${page.pn - 1 }">&laquo;</a></li>
	</c:if>
	<c:forEach begin="1" end="${page.pc }" varStatus="i">
		<c:choose>
			<c:when test="${page.pn == i.count }">
				<li class="active"><a href="javascrip:;">${i.count }</a></li>
			</c:when>
			<c:otherwise>
				<li><a href="?pn=${i.count }">${i.count }</a></li>
			</c:otherwise>
		</c:choose>
	</c:forEach>
	<c:if test="${page.pn != page.pc }">
		<li><a href="?pn=${page.pn + 1 }">&raquo;</a></li>
	</c:if>
</ul>
<ol class="breadcrumb page-info">
	<li>共${page.pc }页</li>
	<li class="active">当前第${page.pn }页</li>
</ol>