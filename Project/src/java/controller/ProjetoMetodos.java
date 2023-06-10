/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import model.Database;
import model.Projeto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Usuario;
import java.util.ArrayList;


public class ProjetoMetodos {
    public boolean cadastraProjeto(Projeto projeto) {
         String insertTableSQL = "INSERT INTO projeto" + "(nm_projeto, hora_trabalhada, tempo_dedicado, cd_usuario, vl_total) VALUES" + "(?,?,?,?,?) ;";
         //String insertTableSQL = "INSERT INTO projeto" + "(nm_projeto, hora_trabalhada, tempo_dedicado, cd_usuario) VALUES" + "(?,?,?,?) ;";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = Database.getConexao().prepareStatement(insertTableSQL);
            preparedStatement.setString(1, projeto.getNome());
            preparedStatement.setDouble(2, projeto.getHoraTrabalhada());
            preparedStatement.setDouble(3, projeto.getTempoDedicadoProjeto());
            preparedStatement.setInt(4, projeto.getIdUsuario());
            preparedStatement.setDouble(5, projeto.getValorTotal());
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean alteraVenda(Projeto projeto) {
       String insertTableSQL = "UPDATE projeto SET nm_projeto = ?, hora_trabalhada = ?, tempo_dedicado = ?"
                + "WHERE cd_projeto = ? ;";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = Database.getConexao().prepareStatement(insertTableSQL);
            preparedStatement.setString(1, projeto.getNome());
            preparedStatement.setDouble(2, projeto.getHoraTrabalhada());
            preparedStatement.setDouble(3, projeto.getTempoDedicadoProjeto());
            preparedStatement.setInt(4, projeto.getId());
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean excluiProjeto(Integer toDelete) {
        String insertTableSQL = "DELETE FROM projeto WHERE cd_projeto = ? ; ";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = Database.getConexao().prepareStatement(insertTableSQL);
            preparedStatement.setInt(1, toDelete);
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public Projeto procuraProjetoPeloID(Integer id) {

        try {
            String sql = "select * from projeto where cd_projeto = ? ;";
            PreparedStatement con = Database.getConexao().prepareStatement(sql);

            con.setInt(1, id);
            ResultSet rs = con.executeQuery();
            Projeto prod = new Projeto();

            if (rs.next()) {
                prod.setId(rs.getInt("cd_projeto"));
                prod.setNome(rs.getString("nm_projeto"));
                prod.setValorTotal(rs.getDouble("vl_total"));
                prod.setIdUsuario(rs.getInt("cd_usuario"));
            }
            rs.close();
            con.close();
            return prod;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList<Projeto> procuraTodosProjetos(int idUsuario) {

        try {
            String sql = "select * from projeto where cd_usuario = ?;";
            PreparedStatement con = Database.getConexao().prepareStatement(sql);
            con.setInt(1, idUsuario);
            ResultSet rs = con.executeQuery();

            ArrayList<Projeto> listaProjetos = new ArrayList<>();
            while (rs.next()) {
                Projeto prod = new Projeto();

                prod.setId(rs.getInt("cd_projeto"));
                prod.setNome(rs.getString("nm_projeto"));
                prod.setValorTotal(rs.getDouble("vl_total"));
                prod.setIdUsuario(rs.getInt("cd_usuario"));

                listaProjetos.add(prod);
            }
            rs.close();
            con.close();
            return listaProjetos;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;    
    }
}