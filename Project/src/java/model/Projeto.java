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
    private String status;
    private String datainicio;
    private String datafim;
    private long prazoDias;

    public Projeto(String nome, double horaTrabalhada, double tempoDedicadoProjeto, int idUsuario, String status, String datainicio, String datafim, long prazoDias) {
        this.nome = nome;
        this.horaTrabalhada = horaTrabalhada;
        this.tempoDedicadoProjeto = tempoDedicadoProjeto;
        this.idUsuario = idUsuario;
        this.status = status;
        this.datainicio = datainicio;
        this.datafim = datafim;
        this.prazoDias = prazoDias;
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

    public void setHoraTrabalhada(double horaTrabalhada) {
        this.horaTrabalhada = horaTrabalhada;
    }

    public void setTempoDedicadoProjeto(double tempoDedicadoProjeto) {
        this.tempoDedicadoProjeto = tempoDedicadoProjeto;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDatainicio() {
        return datainicio;
    }

    public void setDatainicio(String datainicio) {
        this.datainicio = datainicio;
    }

    public String getDatafim() {
        return datafim;
    }

    public void setDatafim(String datafim) {
        this.datafim = datafim;
    }

    public long getPrazoDias() {
        return prazoDias;
    }

    public void setPrazoDias(long prazoDias) {
        this.prazoDias = prazoDias;
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
                + ", status=" + status
                + ", datainicio=" + datainicio
                + ", datafim=" + datafim
                + ", prazoDias=" + prazoDias
                + '}';
    }
}
