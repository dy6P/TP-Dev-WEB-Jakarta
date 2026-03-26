<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Affichage</title>
</head>
<body>

<%!
    String id;
    String login;
    String mdp;
    Connection conn=null;
    PreparedStatement st=null;
%>

<%
    try{
        Class.forName("com.mysql.jdbc.Driver");
    }catch(Exception e){e.printStackTrace();}

    try{
        String jdbc="jdbc:mysql://localhost:3306/student";
        String root="root";
        String mdp="";
        conn= DriverManager.getConnection(jdbc,root,mdp);
        System.out.println(conn);
    }catch(Exception e){e.printStackTrace();}
%>

<h2>Select simple</h2>
<%
    String sel="SELECT * from users";
    st=conn.prepareStatement(sel);
    ResultSet res=st.executeQuery();
%>
<table>
    <%
        while (res.next()) {
            id = res.getString("id");
            login = res.getString("login");
            mdp = res.getString("mdp");

    %>
    <tr><td><%= id%></td><td><%= login%></td><td><%= mdp%></td></tr>
    <%
        }
    %>
</table>


</body>
</html>
