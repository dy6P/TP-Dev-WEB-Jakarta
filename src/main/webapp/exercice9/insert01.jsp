<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Insertion étudiant</title>
</head>
<body>

<h2>Ajouter un étudiant</h2>

<form action="insert01.jsp" method="post">

    <label for="login">Login :</label>
    <input type="text" id="login" name="login" required><br><br>

    <label for="mdp">Couleur :</label>
    <input type="password" id="mdp" name="mdp" required><br><br>

    <input type="submit" value="Insérer">
</form>

<%
    Connection conn=null;
    Statement st = conn.createStatement();
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

    String ins="INSERT INTO student(login,mdp) VALUES ('"+login+"','"+mdp+"')";
    try {
        st.executeUpdate(ins);
    } catch (SQLException e) {
        throw new RuntimeException(e);
    }
%>

</body>
</html>