<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="ui-paging">
	<c:if test="${page.pc > 0 }">
		<c:choose>
			<c:when test="${page.pn != 1 }">
				<a href="?pn=${page.pn - 1 }" class="ui-paging-prev"><i class="iconfont" title="左三角形">&#xF039;</i>&nbsp;上一页</a>		
			</c:when>
			<c:otherwise>
				<span class="ui-paging-prev"><i class="iconfont" title="左三角形">&#xF039;</i>&nbsp;上一页</span>
			</c:otherwise>
		</c:choose>
	    <c:forEach begin="1" end="${page.pc }" varStatus="i">
			<c:choose>
				<c:when test="${page.pn == i.count }">
					<a class="ui-paging-item ui-paging-current" href="javascrip:;">${i.count }</a>
				</c:when>
				<c:otherwise>
					<a class="ui-paging-item" href="?pn=${i.count }">${i.count }</a>
				</c:otherwise>
			</c:choose>
			<!-- <span class="ui-paging-ellipsis">...</span> -->
		</c:forEach>
		<c:choose>
			<c:when test="${page.pn != page.pc }">
				<a href="?pn=${page.pn + 1 }" class="ui-paging-next">下一页&nbsp;<i class="iconfont" title="右三角形">&#xF03A;</i></a>		
			</c:when>
			<c:otherwise>
				<span class="ui-paging-next">下一页&nbsp;<i class="iconfont" title="右三角形">&#xF03A;</i></span>
			</c:otherwise>
		</c:choose>
	    
	    <span class="ui-paging-info">第<span class="ui-paging-bold">${page.pn }/${page.pc }</span>页</span>
	    <c:if test="${page.pc > 15 }">
	    	<span class="ui-paging-which"><input name="pn" value="6" type="text"></span>
	    	<a class="ui-paging-info ui-paging-goto" href="#">跳转</a>
	    </c:if>
    </c:if>
</div>
