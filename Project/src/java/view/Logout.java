package view;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet(name = "Logout", urlPatterns = {"/logout"})
public class Logout extends HttpServlet {

   @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.invalidate(); // Invalida a sessão atual

        // Redireciona para a página de login
        response.sendRedirect("login.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
