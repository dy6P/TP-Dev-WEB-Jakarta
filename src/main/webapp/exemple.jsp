<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<%! String message="";%>
<%
    String e=request.getParameter("e");
    if (e!=null){
        message="Erreur";
    } else {
        message="";
    }
%>
<form action="uneServlet" method="post">
    <label for="login" id="login">login</label>
    <input type="text" name="login">
    <br>
    <br>
    <label for="mdp" id="mdp">mdp</label>
    <input type="text" name="mdp">
    <br>
    <br>
    <input type="submit" name="ok" value="OK">

</form>

<p><strong><%= message%></strong></p>
<hr>
<!--<a href="uneSerlvet">Hello Servlet</a>-->
</body>
</html>