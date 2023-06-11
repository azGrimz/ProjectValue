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
            <h1>Seja bem vindo: ${usuario.login}</h1> 
            <h2>Meus Projetos</h2>

        </div>
        <br>
        <br>        
        <table class="table table-bordered">
            <!-- cabeçalho da tabela -->
            <tr bgcolor=#d8e2dc>
                <th>#</th>
                <th>Nome do projeto</th>
                <th>Valor Total</th>
                <th>Ações</th>                
            </tr>
            <!--<tr>
               <th>Código</th>
               <th>Descrição</th>
               <th>Descrição</th>
               <th>Descrição</th>
            </tr>-->
            <!-- detalhes (corpo) da tabela -->
            <c:forEach var="projeto" items="${listaDeProjetos}">
                <tr align="left">
                    <td>${projeto.id}</td>
                    <td>${projeto.nome}</td>
                    <td>${projeto.valorTotal}</td>
                    <td>
                <center>
                        <form action="excluirproduto" method="post">
                            <input type="hidden"  name="idProjeto" value="${projeto.id}"/>
                            <input type="submit" class="btn btn-danger" value="Excluir Projeto"/>
                        </form>    
                        <form action="alterarproduto" method="get">
                            <input type="hidden" name="idProjeto"  value="${projeto.id}"/>
                            <input type="submit" class="btn btn-primary" value="Alterar Projeto"/>
                        </form>
                </center>
                    </td>
                </tr>
            </c:forEach>
            
        </table>
        <p style="color: red"> ${erro} </p>

        <br>

        


    <%@include file="WEB-INF/jspf/footer.jspf"%>
</body>
</html>
