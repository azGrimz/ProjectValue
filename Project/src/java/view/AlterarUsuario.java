package view;

import controller.UsuarioMetodos;
import model.Usuario;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "AlterarUsuario", urlPatterns = {"/alterarusuario"})
public class AlterarUsuario extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        UsuarioMetodos pDao = new UsuarioMetodos();
        String loginUsuario = request.getParameter("usuario");
        Usuario p = pDao.procuraUsuarioPeloID(loginUsuario);
        request.setAttribute("usuario", p);

        RequestDispatcher dispatcher = getServletContext()
                .getRequestDispatcher("/alterarusuario.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("POST - ALTERAR USUARIO");

        Usuario u = new Usuario();
        int idUsuario = Integer.parseInt(request.getParameter("idUsuario"));
        u.setId(idUsuario);
        u.setLogin(request.getParameter("usuario"));
        u.setSenha(request.getParameter("senha"));
        u.setNome(request.getParameter("nome"));
        u.setEmail(request.getParameter("email"));

        UsuarioMetodos dao = new UsuarioMetodos();
        if (dao.alteraUsuario(u)) {
            request.setAttribute("usuario", u);
            response.sendRedirect("listarprojetos");
        } else {
            //enviar um atributo msg de erro
            request.setAttribute("erro", "Erro ao alterar");
        }
    }
}
