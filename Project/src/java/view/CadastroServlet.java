/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package view;

import model.Usuario;
import controller.UsuarioMetodos;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpSession;
/**
 *
 * @author Desenvolvedor
 */
@WebServlet(name = "CadastroServlet", urlPatterns = {"/cadastrarusuario"})
public class CadastroServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = getServletContext()
                .getRequestDispatcher("/cadastro.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         System.out.println("POST - CADASTRAR USUARIO");
        Usuario u = new Usuario();
        u.setSenha(request.getParameter("senha"));
        u.setNome(request.getParameter("usuario"));
        u.setEmail(request.getParameter("email"));
        u.setLogin(request.getParameter("login"));

        UsuarioMetodos dao = new UsuarioMetodos();

        if (dao.cadastraUsuario(u)) {
            request.setAttribute("usuario", u);
            HttpSession ses = request.getSession();
            ses.setAttribute("usuario",u);
        } else {
            //enviar um atributo msg de erro
            request.setAttribute("erro", "Usuário ou senha inválida!");
        }
        
        response.sendRedirect("listarprojetos");
    }
}