<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Insertion 2</title>
</head>
<body>

<h2>Ajouter un étudiant</h2>

<form action="insert02.jsp" method="post">

    <label for="login">Login :</label>
    <input type="text" id="login" name="login" required><br><br>

    <label for="mdp">Couleur :</label>
    <input type="password" id="mdp" name="mdp" required><br><br>

    <input type="submit" value="Insérer">
</form>

<%
    Connection conn=null;
    Statement ps = null;
    String login = request.getParameter("login");
    String mdp = request.getParameter("mdp");
%>

<%
    try{
        Class.forName("com.mysql.jdbc.Driver");
    }catch(Exception e){e.printStackTrace();}

    try{
        String jdbc="jdbc:mysql://localhost:3306/student";
        String root="root";
        String pass="";
        conn= DriverManager.getConnection(jdbc,root,pass);
        System.out.println(conn);
    }catch(Exception e){e.printStackTrace();}

    String ins="INSERT INTO student(login,mdp) VALUES (?,?)";
    ps=conn.prepareStatement(ins);
    ps.setString(1,login);
    ps.setString(2,mdp);
    ps.executeUpdate();
%>

</body>
</html>
