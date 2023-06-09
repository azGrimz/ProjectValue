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
        String insertTableSQL = "INSERT INTO usuario" + "(nm_usuario, nm_senha) VALUES" + "(?,?) ;";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = Database.getConexao().prepareStatement(insertTableSQL);
            preparedStatement.setString(2, usuario.getSenha());
            preparedStatement.setString(1, usuario.getNome());
            
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean alteraUsuario(Usuario usuario) {
        String insertTableSQL = "UPDATE usuario SET nm_usuario = ?, nm_senha = ?"
                + "WHERE cd_usuario = ? ;";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = Database.getConexao().prepareStatement(insertTableSQL);            
            preparedStatement.setString(2, usuario.getSenha());
            preparedStatement.setString(1, usuario.getNome());
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

    public Usuario procuraUsuarioPeloID(int id) {

        try {
            String sql = "select * from usuario where cd_usuario = ? ;";
            PreparedStatement con = Database.getConexao().prepareStatement(sql);

            con.setInt(1, id);
            ResultSet rs = con.executeQuery();
            Usuario user = new Usuario();

            if (rs.next()) {
                user.setNome(rs.getString("cd_usuario"));
                user.setNome(rs.getString("nm_usuario"));
                user.setNome(rs.getString("nm_senha"));
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
            String sql = "select * from usuario where nm_usuario = ? and nm_senha = ?";
            
            //executar o sql
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, u.getNome());
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
