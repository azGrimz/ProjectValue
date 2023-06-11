package view;

import controller.ProjetoMetodos;
import model.Projeto;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "ExcluirProjeto", urlPatterns = {"/excluirprojeto"})
public class ExcluirProjeto extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = getServletContext()
                .getRequestDispatcher("/listarProjetos.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("POST - Excluir PROJETO");

        Projeto u = new Projeto();
        u.setId(Integer.parseInt(request.getParameter("idProjeto")));
        
        ProjetoMetodos dao = new ProjetoMetodos();

        dao.excluiProjeto(u.getId());        
        response.sendRedirect("listarprojetos");
    }
}
