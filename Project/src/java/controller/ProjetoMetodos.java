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
        String insertTableSQL = "INSERT INTO projeto"
                + "(nm_projeto, hora_trabalhada, tempo_dedicado, cd_usuario, vl_total, dt_inicio, dt_fim, prazo, status) VALUES" + "(?,?,?,?,?,?,?,?,?) ;";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = Database.getConexao().prepareStatement(insertTableSQL);
            preparedStatement.setString(1, projeto.getNome());
            preparedStatement.setDouble(2, projeto.getHoraTrabalhada());
            preparedStatement.setDouble(3, projeto.getTempoDedicadoProjeto());
            preparedStatement.setInt(4, projeto.getIdUsuario());
            preparedStatement.setDouble(5, projeto.getValorTotal());
            preparedStatement.setString(6, projeto.getDatainicio());
            preparedStatement.setString(7, projeto.getDatafim());
            preparedStatement.setLong(8, projeto.getPrazoDias());
            preparedStatement.setString(9, projeto.getStatus());
            preparedStatement.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean alteraProjeto(Projeto projeto) {
        String insertTableSQL = "UPDATE projeto SET nm_projeto = ?, hora_trabalhada = ?, tempo_dedicado = ?, dt_inicio = ?, dt_fim = ?, prazo = ?, status = ?, vl_total = ?"
                + "WHERE cd_projeto = ? AND cd_usuario = ?;";
        PreparedStatement preparedStatement;
        try {
            preparedStatement = Database.getConexao().prepareStatement(insertTableSQL);
            preparedStatement.setString(1, projeto.getNome());
            preparedStatement.setDouble(2, projeto.getHoraTrabalhada());
            preparedStatement.setDouble(3, projeto.getTempoDedicadoProjeto());
            preparedStatement.setString(4, projeto.getDatainicio());
            preparedStatement.setString(5, projeto.getDatafim());
            preparedStatement.setLong(6, projeto.getPrazoDias());
            preparedStatement.setString(7, projeto.getStatus());
            preparedStatement.setDouble(8, projeto.getValorTotal());
            preparedStatement.setInt(9, projeto.getId());
            preparedStatement.setInt(10, projeto.getIdUsuario());

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
                prod.setPrazoDias(rs.getLong("prazo"));
                prod.setStatus(rs.getString("status"));
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
                prod.setPrazoDias(rs.getLong("prazo"));
                prod.setStatus(rs.getString("status"));

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
