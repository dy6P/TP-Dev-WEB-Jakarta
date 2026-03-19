package com.example.projet;

import java.io.*;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        System.out.println("La Servlet passe par la méthode init");
        message = "Coucou, c'est la Servlet.";
    }

    public void service(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("la Servlet passe par la méthode service");
        doGet(request,response);
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("La Servlet passe par la méthode doGet");
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("<a href=\"index.jsp\">Accueil</a>");
        out.println("</body></html>");
    }

    public void destroy() {
        System.out.println("La Servlet passe par la méthode destroy");
    }
}