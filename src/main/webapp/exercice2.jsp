<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Damier JSP</title>
</head>
<body>

<form action="exercice2.jsp" method="post">

    <label>Texte</label>
    <input type="text" name="texte"><br><br>

    <label>Couleur</label>
    <input type="color" name="couleur"><br><br>

    <input type="submit" value="OK">

</form>

<%
    String texte = request.getParameter("texte");
    String couleur = request.getParameter("couleur");

    if(texte != null && couleur != null){
%>

<table style="border:1px solid black; border-collapse:collapse;">

    <%
        for(int i=0;i<8;i++){
    %>
    <tr>
        <%
            for(int j=0;j<8;j++){

                if((i+j)%2==0){
        %>
        <td style="padding:20px; border:1px solid <%= couleur %>;">
            <p style="color:<%= couleur %>"><%= texte %></p>
        </td>
        <%
        }else{
        %>
        <td style="padding:20px; border:1px solid <%= couleur %>; background-color:<%= couleur %>"></td>
        <%
                }

            }
        %>
    </tr>
    <%
        }
    %>

</table>

<%
    }
%>

<br>
<br>
<a href="index.jsp">Accueil</a>

</body>
</html>