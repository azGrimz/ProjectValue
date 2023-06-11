<%-- 
    Document   : perfil
    Created on : 8 de jun. de 2023, 19:26:35
    Author     : carla
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.Usuario"%>
<%@page import="model.Projeto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/estilo.css">
        <title>Projetos</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbarusuario.jspf"%>

        <div class="header3">
            <h1>Seja bem vindo(a): ${usuario.login}</h1> 
            <h2>Meus Projetos</h2>

        </div>
        <br>
        <br>        
        <table class="table table-bordered table-striped-columns  border-secondary">
            <thead>
            <!-- cabeçalho da tabela -->
            <tr bgcolor=#d8e2dc>

                <th>Nome do projeto</th>
                <th>Valor Total</th>
                <th>Ação</th>                
            </tr>
            </thead>
            <tbody>
            <!--<tr>
               <th>Código</th>
               <th>Descrição</th>
               <th>Descrição</th>
               <th>Descrição</th>
            </tr>-->
            <!-- detalhes (corpo) da tabela -->
            <c:forEach var="projeto" items="${listaDeProjetos}">
                <tr align="left">

                    <td>${projeto.nome}</td>
                    <td>${projeto.valorTotal}</td>
                    <td>
                <center>
                    
                    <form action="excluirprojeto" method="post">
                        <input type="hidden"  name="idProjeto" value="${projeto.id}"/>
                        
                        <button type="submit" class="btn btn-danger">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
  <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5Zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5Zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6Z"/>
  <path d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1ZM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118ZM2.5 3h11V2h-11v1Z"/>
</svg>
                        </button>
                    </form>    
                    <!--<form action="alterarprojeto" method="get">
                        <input type="hidden" name="idProjeto"  value="${projeto.id}"/>
                        <input type="submit" class="btn btn-primary" value="Alterar Projeto"/>
                    </form>-->
                </center>
            </td>
        </tr>
    </c:forEach>
        </tbody>
</table>
<p style="color: red"> ${erro} </p>

<br>





</body>
</html>
