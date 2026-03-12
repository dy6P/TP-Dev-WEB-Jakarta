<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<%! public String enItalic(String message) {
    return("<p style='font-style:italic'>"+message+"</p>");
} %>
<h1><%= "Hello World!" %>
</h1>
<%=enItalic("Bonjour")%>
<br/>
<a href="hello-servlet">Hello Servlet</a>
<br>
<br>
<a href="exercice1.jsp">exercice1</a>
<br>
<br>
<a href="exercice2.jsp">exercice2</a>
</body>
</html>
