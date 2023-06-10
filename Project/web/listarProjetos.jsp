<%-- 
    Document   : perfil
    Created on : 8 de jun. de 2023, 19:26:35
    Author     : carla
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page import="classes.Usuario"%>
<%@page import="classes.Projeto"%>
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
        <%@include file="WEB-INF/jspf/navbar.jspf"%>

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
                    <td>${projeto.nome}</td>
                    <td>${projeto.valorTotal}</td>
                    <td>
                        <form action="excluirproduto" method="post">
                            <input type="hidden"  name="idProjeto" value="${projeto.id}"/>
                            <input type="submit" class="btn btn-danger" value="Excluir produto"/>
                        </form>    
                        <form action="alterarproduto" method="get">
                            <input type="hidden" name="idProjeto"  value="${projeto.id}"/>
                            <input type="submit" class="btn btn-warning" value="Alterar Produto"/>
                        </form>
                    </td>
                </tr>
            </c:forEach>
            
        </table>
        <p style="color: red"> ${erro} </p>

        <br>

        <!-- <div class="w3-row w3-padding-64">
             <div class="w3-twothird w3-container">
                 <h1 class="w3-text-blue">Heading</h1>
                 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum
                     dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
             </div>
             <div class="w3-third w3-container">
                 <p class="w3-border w3-padding-large w3-padding-32 w3-center">AD</p>
                 <p class="w3-border w3-padding-large w3-padding-64 w3-center">AD</p>
             </div>
         </div>

         <div class="w3-row">
             <div class="w3-twothird w3-container">
                 <h1 class="w3-text-blue">Heading</h1>
                 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum
                     dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
             </div>
             <div class="w3-third w3-container">
                 <p class="w3-border w3-padding-large w3-padding-32 w3-center">AD</p>
                 <p class="w3-border w3-padding-large w3-padding-64 w3-center">AD</p>
             </div>
         </div>

         <div class="w3-row w3-padding-64">
             <div class="w3-twothird w3-container">
                 <h1 class="w3-text-blue">Heading</h1>
                 <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum
                     dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
             </div>
             <div class="w3-third w3-container">
                 <p class="w3-border w3-padding-large w3-padding-32 w3-center">AD</p>
                 <p class="w3-border w3-padding-large w3-padding-64 w3-center">AD</p>
             </div>
         </div>-->
    </div>


    <%@include file="WEB-INF/jspf/footer.jspf"%>
</body>
</html>
