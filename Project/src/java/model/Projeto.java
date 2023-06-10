package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Projeto {

    private int id;
    private String nome;
    private double valorTotal;
    private double horaTrabalhada;
    private double tempoDedicadoProjeto;
    private int idUsuario;

    public Projeto(String nome, double horaTrabalhada, double tempoDedicadoProjeto, int idUsuario) {
        this.nome = nome;
        this.horaTrabalhada = horaTrabalhada;
        this.tempoDedicadoProjeto = tempoDedicadoProjeto;
        this.idUsuario = idUsuario;
    }

    public int getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public double getValorTotal() {
        return valorTotal;
    }

    public double getHoraTrabalhada() {
        return horaTrabalhada;
    }

    public double getTempoDedicadoProjeto() {
        return tempoDedicadoProjeto;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setValorTotal(double valorTotal) {
        this.valorTotal = valorTotal;
    }

    public void setHoraTrabalhada(int horaTrabalhada) {
        this.horaTrabalhada = horaTrabalhada;
    }

    public void setTempoDedicadoProjeto(int tempoDedicadoProjeto) {
        this.tempoDedicadoProjeto = tempoDedicadoProjeto;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Projeto() {
    }

    @Override
    public String toString() {
        return "Projeto{"
                + "id=" + id
                + ", nome='" + nome + '\''
                + ", valorTotal=" + valorTotal
                + ", horaTrabalhada=" + horaTrabalhada
                + ", tempoDedicadoProjeto=" + tempoDedicadoProjeto
                + ", idUsuario=" + idUsuario
                + '}';
    }
}
