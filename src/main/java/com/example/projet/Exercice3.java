package com.example.projet;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/exercice3-servlet")
public class Exercice3 extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String texte = request.getParameter("texte");
        String couleur = request.getParameter("couleur");
        int lignes = Integer.parseInt(request.getParameter("ligne"));
        int colonnes = Integer.parseInt(request.getParameter("colonne"));

        if(lignes > 10) lignes = 10;
        if(colonnes > 10) colonnes = 10;

        request.setAttribute("texte", texte);
        request.setAttribute("couleur", couleur);
        request.setAttribute("lignes", lignes);
        request.setAttribute("colonnes", colonnes);

        RequestDispatcher disp = request.getRequestDispatcher("exercice3/damier.jsp");
        try {
            disp.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        }
    }
}