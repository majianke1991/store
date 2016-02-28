<div class="header" style="position: ">


=============
<a href="/store/pages/index.jsp">home</a>
=============
<c:choose>
	<c:when test="${empty sessionScope.profile }">
	<a href="/store/pages/login.jsp">login</a>
	</c:when>
	<c:otherwise>
	你好！${sessionScope.profile.name }
	|<a href="/store/logoutS" >logOut</a>
	</c:otherwise>
</c:choose>

</div>