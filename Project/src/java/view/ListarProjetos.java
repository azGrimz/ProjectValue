/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package view;

import controller.ProjetoMetodos;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Projeto;

/**
 *
 * @author Desenvolvedor
 */
@WebServlet(name = "ListarProjetos", urlPatterns = {"/listarprojetos"})
public class ListarProjetos extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProjetoMetodos dao = new ProjetoMetodos();
        ArrayList<Projeto> listaDeProjetos = dao.procuraTodosProjetos();
            request.setAttribute("listaDeProjetos", listaDeProjetos);
        RequestDispatcher rd = request.getRequestDispatcher("listarProjetos.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         System.out.println("POST - CADASTRAR USUARIO");
    }
}
