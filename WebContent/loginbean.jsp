<%@ page language="Java" import="java.sql.*"%>
<HTML>
<HEAD>
<TITLE>DataBase Search</TITLE>
</HEAD>
<BODY>
	<jsp:useBean id="db" scope="request" class="mypack.UserDN">
		<jsp:setProperty name="db" property="userName" value='<%=request.getParameter("user")%>' />
		<jsp:setProperty name="db" property="password" value='<%=request.getParameter("pass")%>' />
	</jsp:useBean>
	<jsp:forward page="DangNhapServlet">
		<jsp:param name="username" value="<%=db.getUserName()%>" />
		<jsp:param name="password" value="<%=db.getPassword()%>" />
	</jsp:forward>
</body>
</html>