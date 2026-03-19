<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Damier JSP</title>
</head>
<body>

<h2>Votre damier</h2>

<%
    String texte = (String) request.getAttribute("texte");
    String couleur = (String) request.getAttribute("couleur");
    int lignes = (Integer) request.getAttribute("lignes");
    int colonnes = (Integer) request.getAttribute("colonnes");
%>

<table style='border:1px solid black; border-collapse:collapse;'>
    <%
        for(int i=0;i<lignes;i++){
    %>
    <tr>
        <%
            for(int j=0;j<colonnes;j++){
                if((i+j)%2==0){
        %>
        <td style='padding:20px; border:1px solid <%= couleur %>;'>
            <p style='color:<%= couleur %>'><%= texte %></p>
        </td>
        <%
        } else {
        %>
        <td style='padding:20px; border:1px solid <%= couleur %>; background-color:<%= couleur %>'></td>
        <%
                }
            }
        %>
    </tr>
    <%
        }
    %>
</table>

<br><a href='exercice3/formulaire.jsp'>Générer un nouveau damier</a>
<br><br><a href='../index.jsp'>Accueil</a>

</body>
</html>