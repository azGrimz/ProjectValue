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
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

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
                .getRequestDispatcher("/cadastrarProjeto.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("POST - CADASTRAR PROJETO");
        request.setCharacterEncoding("UTF-8");
        
        Projeto u = new Projeto();
        u.setNome(request.getParameter("nome"));
        u.setHoraTrabalhada(Double.parseDouble(request.getParameter("horatrabalhada")));
        u.setTempoDedicadoProjeto(Double.parseDouble(request.getParameter("tempodedicado")));
        u.setIdUsuario(Integer.parseInt(request.getParameter("idUsuario")));
        u.setDatainicio(request.getParameter("datainicio"));
        u.setDatafim(request.getParameter("datafim"));
        String page = "home.jsp";

       long prazoStatus = calcularPrazoEStatus(u);
        u.setPrazoDias(prazoStatus);

        double valorTotal = calcularValorTotal(u, prazoStatus);
        u.setValorTotal(valorTotal);
        
        ProjetoMetodos dao = new ProjetoMetodos();
        if (dao.cadastraProjeto(u)) {

            page = "listarprojetos";
            response.sendRedirect(page);
        } else {
            //enviar um atributo msg de erro
            request.setAttribute("erro", "Projeto não inserido.");
        }
        ;
    }
    
    public long calcularPrazoEStatus(Projeto p) {
        LocalDate dataInicio = LocalDate.parse(p.getDatainicio());
        LocalDate dataFim = LocalDate.parse(p.getDatafim());
        LocalDate dataAtual = LocalDate.now();

        if (dataAtual.isBefore(dataFim)) {
            p.setStatus("Em andamento");
        } else {
            p.setStatus("Finalizado");
        }

        long prazoDias = ChronoUnit.DAYS.between(dataInicio, dataFim);
        return prazoDias;
    }
    
    public double calcularValorTotal(Projeto p, long prazoDias) {
        double valorTotal = p.getHoraTrabalhada()* p.getTempoDedicadoProjeto() * (double) prazoDias;
        return valorTotal;
    }
}
