<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Damier JSP</title>
</head>
<body>

<h2>Créer votre damier</h2>

<form action="../exercice3-servlet" method="post">

    <label for="texte">Texte :</label>
    <input type="text" id="texte" name="texte" required><br><br>

    <label for="couleur">Couleur :</label>
    <input type="color" id="couleur" name="couleur" value="#000000" required><br><br>

    <label for="ligne">Nombre de lignes :</label>
    <input type="number" id="ligne" name="ligne" min="1" max="10" required><br><br>

    <label for="colonne">Nombre de colonnes :</label>
    <input type="number" id="colonne" name="colonne" min="1" max="10" required><br><br>

    <input type="submit" value="Générer le damier">
</form>

<br><a href='../index.jsp'>Accueil</a>

</body>
</html>