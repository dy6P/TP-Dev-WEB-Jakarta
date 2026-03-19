<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%!
    public String enVert(String message) {
        return "<p style='color:green'>" + message + "</p>";
    }

    public String enRouge(String message) {
        return "<p style='color:red'>" + message + "</p>";
    }
%>

<%
    String message = request.getParameter("message");

    if(message != null){
        if (!message.equals("servlet")){
            message = enRouge(message);
        } else {
            message = enVert(message);
        }
    } else {
        message = "";
    }
%>

<form action="exercice1.jsp" method="post">
    <label for="message">Message</label>
    <input type="text" name="message">
    <input type="submit" name="ok" value="OK">
</form>

<p><strong><%= message %></strong></p>

<a href="index.jsp">Accueil</a>

</body>
</html>