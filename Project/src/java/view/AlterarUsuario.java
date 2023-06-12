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
import jakarta.servlet.http.HttpSession;

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
                .getRequestDispatcher("/alterarCadastro.jsp");
        dispatcher.forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         System.out.println("POST - ALTERAR USUARIO");
         
        Usuario u = new Usuario();
        
        u.setId(Integer.parseInt(request.getParameter("idUsuario")));
        u.setLogin(request.getParameter("usuario"));
        u.setNome(request.getParameter("nome"));
        u.setSenha(request.getParameter("senha"));        
        u.setEmail(request.getParameter("email"));

        // Atualiza o nome do usuário na sessão
        HttpSession session = request.getSession();
        
        UsuarioMetodos dao = new UsuarioMetodos(); 
        Usuario usuarioAtualizado = dao.procuraUsuarioPeloID(u.getLogin());
        if (dao.alteraUsuario(u)) {
            session.setAttribute("usuario", usuarioAtualizado);
            request.setAttribute("usuario", u);
            
        } else {
            //enviar um atributo msg de erro
            request.setAttribute("erro", "Erro ao alterar");
        }
        response.sendRedirect("logout");
    }
}
