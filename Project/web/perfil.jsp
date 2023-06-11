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
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/estilo.css">
        <title>Meu Perfil</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbarusuario.jspf"%>

        <header class="w3-container w3-center" style="padding:128px 16px; background: linear-gradient(90deg, rgba(0,86,200,1) 19%, rgba(124,188,255,1) 84%);">
            <h1 class="w3-margin w3-jumbo" style="color:white">Olá, ${usuario.login}</h1>
            <p class="w3-xlarge" style="color:white">Estamos muito felizes que tenha se inscrito na ProjectValue. É um prazer ajudá-lo em seus projetos.</p>
            <p class="w3-xlarge" style="color:white">O que deseja fazer?</p>
            <!--<button class="w3-button w3-black w3-padding-large w3-large w3-margin-top">Get Started</button>-->
        </header>

        <!-- First Grid -->
        <div class="w3-row-padding w3-padding-64 w3-container">
            <div class="w3-content">
                <div class="w3-twothird">
                    <h5 class="w3-padding-32"> ➥️‍ Deseja visualizar seus projetos? <a href="ListarProjeto.jsp"><button class="btn btn-primary me-md-2" type="button" style="margin-left: 35px"> Clique aqui!</button><a/></h5>
                    <h5 class="w3-padding-32"> ➥ Deseja cadastrar um novo projeto? <a href="CadastrarProjeto.jsp"><button class="btn btn-primary me-md-2" type="button" style="margin-left: 11px"> Clique aqui!</button><a/></h5>
                    <h5 class="w3-padding-32"> ➥ Deseja alterar seu cadastro? <a href="alterarCadastro.jsp"><button class="btn btn-primary me-md-2" type="button" style="margin-left: 63px"> Clique aqui!</button><a/></h5>
                </div>
                <div class="w3-third w3-center">
                    <i class="fa fa-address-book-o w3-padding-64 " style="font-size:170px;color:#fe7f2d; margin-left: 100px;"></i>
                </div>
            </div>
        </div>   

        <%@include file="WEB-INF/jspf/footer.jspf"%>

        <!-- <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
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
         </form> -->  
    </body>
</html>
