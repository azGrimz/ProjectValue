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
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.Projeto;
import model.Usuario;

/**
 *
 * @author Desenvolvedor
 */
@WebServlet(name = "ListarProjetos", urlPatterns = {"/listarprojetos"})
public class ListarProjetos extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Usuario usuario = (Usuario) session.getAttribute("usuario");

        if (usuario != null) {
            // Recupera o ID do usuário logado
            int idUsuario = usuario.getId();

            // Obtenha os projetos relacionados a esse usuário
            ProjetoMetodos dao = new ProjetoMetodos();
            ArrayList<Projeto> listaDeProjetos = dao.procuraTodosProjetos(idUsuario);

            // Defina os projetos como um atributo da requisição
            request.setAttribute("listaDeProjetos", listaDeProjetos);

            // Encaminhe para a página de exibição dos projetos
            RequestDispatcher rd = request.getRequestDispatcher("/listarProjetos.jsp");
            rd.forward(request, response);
        } else {
            // Se o usuário não estiver logado, redirecione para a página de login
            response.sendRedirect("login.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         System.out.println("POST - CADASTRAR USUARIO");
    }
}
