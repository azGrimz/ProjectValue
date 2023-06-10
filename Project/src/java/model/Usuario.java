package model;

public class Usuario {
    private int id;
    private String nome;
    private String email;
    private String senha;
    private String login;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

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

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }
    
    
    
    public Usuario(int id, String senha, String nome, String email, String login) {
        this.id = id;
        this.senha = senha;
        this.nome = nome;
        this.email = email;
        this.login = login;
    }

    public Usuario() {
    }

    @Override
    public String toString() {
        return "Usuario{" + ", senha=" + senha + ", nome=" + nome + ", email=" + email + ", login="+  email +'}';
    } 
}
