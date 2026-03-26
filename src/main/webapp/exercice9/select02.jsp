<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <h2>Select Préparé</h2>
    <%!
        String id;
        String login;
        String mdp;
        Connection conn=null;
        PreparedStatement st=null;
    %>

    <%
        String sel="SELECT * from student WHERE id >= ?";
        st=conn.prepareStatement(sel);
        st.setString(1,"2");
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


</head>
<body>

</body>
</html>
