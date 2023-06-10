<%-- 
    Document   : perfil
    Created on : 10 de jun. de 2023, 00:51:03
    Author     : carla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
        <a class="navbar-brand" href="loja">Loja</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="listarprojetos">Projetos <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="cadastrarprojeto">Novo projeto</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="alterarUsuario">Alterar</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="logout">Sair</a>
                </li>
                
            </ul>

        </div>
    </nav>
        <form action="excluirprojeto" method="post">
            <h1>Excluir a Conta</h1>
            <input type="hidden"  name="idProjeto" value="${projeto.id}"/>
            <input type="submit" class="btn btn-danger" value="Excluir Projeto"/>
        </form>   
    </body>
</html>
