package controller;

import model.Database;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Usuario;

public class UsuarioMetodos {
    public boolean cadastraUsuario(Usuario usuario) {
        String insertTableSQL = "INSERT INTO usuario" + "(nm_usuario, nm_senha, nm_email, login) VALUES" + "(?,?,?,?) ;";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = Database.getConexao().prepareStatement(insertTableSQL);
            preparedStatement.setString(1, usuario.getNome());
            preparedStatement.setString(2, usuario.getSenha());
            preparedStatement.setString(3, usuario.getEmail());
            preparedStatement.setString(4, usuario.getLogin());
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean alteraUsuario(Usuario usuario) {
        String insertTableSQL = "UPDATE usuario SET nm_usuario = ?, nm_senha = ?, nm_email = ?, login = ?"
                + "WHERE cd_usuario = ? ;";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = Database.getConexao().prepareStatement(insertTableSQL);            
            preparedStatement.setString(1, usuario.getNome());
            preparedStatement.setString(2, usuario.getSenha());
            preparedStatement.setString(3, usuario.getEmail());
            preparedStatement.setString(4, usuario.getLogin());
            preparedStatement.setInt(5, usuario.getId());
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean excluiUsuario(String toDelete) {
        String insertTableSQL = "DELETE FROM usuario WHERE cd_usuario = ? ; ";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = Database.getConexao().prepareStatement(insertTableSQL);
            preparedStatement.setString(1, toDelete);
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public Usuario procuraUsuarioPeloID(String login) {

        try {
            String sql = "select * from usuario where login = ? ;";
            PreparedStatement con = Database.getConexao().prepareStatement(sql);

            con.setString(1, login);
            ResultSet rs = con.executeQuery();
            Usuario user = new Usuario();

            if (rs.next()) {
                user.setId(rs.getInt("cd_usuario"));
                user.setNome(rs.getString("nm_usuario"));
                user.setSenha(rs.getString("nm_senha"));
                user.setEmail(rs.getString("nm_email"));
                user.setLogin(rs.getString("login"));
            }
            rs.close();
            con.close();
            return user;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean validar(Usuario u){
        try {
            //con: referência para a conexão com o banco
            Connection con = Database.getConexao();
            String sql = "select * from usuario where login = ? and nm_senha = ?";
            
            //executar o sql
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, u.getLogin());
            ps.setString(2, u.getSenha());
            
            //representa o resultado do SQL
            ResultSet rs = ps.executeQuery();
            if(rs.first()){
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioMetodos.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}