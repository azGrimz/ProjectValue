/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package view;

import controller.ProjetoMetodos;
import model.Projeto;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Desenvolvedor
 */
@WebServlet(name = "CadastrarProjeto", urlPatterns = {"/cadastrarprojeto"})
public class CadastrarProjeto extends HttpServlet {

        @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = getServletContext()
                .getRequestDispatcher("/WEB-INF/ProductModule/cadastrarProduto.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("POST - CADASTRAR PRODUTO");
        request.setCharacterEncoding("UTF-8");
        Projeto u = new Projeto();
        u.setNome(request.getParameter("nome"));
        u.setHoraTrabalhada(Double.parseDouble(request.getParameter("horatrabalhada")));
        u.setTempoDedicadoProjeto(Double.parseDouble(request.getParameter("tempodedicado")));
        u.setIdUsuario(Integer.parseInt(request.getParameter("idUsuario")));
        String page = "home.jsp";

        ProjetoMetodos dao = new ProjetoMetodos();
        double valorTotal = calcularValorTotal(u);
        u.setValorTotal(valorTotal);
        if (dao.cadastraProjeto(u)) {

            page = "listarprojetos";
            response.sendRedirect(page);
        } else {
            //enviar um atributo msg de erro
            request.setAttribute("erro", "Produto não inserido.");
        }
        ;
    }
    
     public double calcularValorTotal(Projeto p) {
        double valorTotal = p.getHoraTrabalhada() * p.getTempoDedicadoProjeto();
        return valorTotal;
    }
}
