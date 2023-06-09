package model;

public class Usuario {
    private int id;
    private String nome;
    private String senha;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
    
    public Usuario(int id, String senha, String nome) {
        this.id = id;
        this.senha = senha;
        this.nome = nome;
    }

    public Usuario() {
    }

    @Override
    public String toString() {
        return "Usuario{" + ", senha=" + senha + ", nome=" + nome + '}';
    }
    
}
