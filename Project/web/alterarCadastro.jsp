<%-- 
    Document   : alterarCadastro
    Created on : 11 de jun. de 2023, 00:35:30
    Author     : carla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/estilo.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <title>Alterar Cadastro</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbarusuario.jspf"%>
        <div class="main-cadastro">    
            <div class="left-cadastro">

                <h1 class="w3-margin w3-wide ">Altere seu cadastro</h1>

            </div>
            <!--</div>-->

            <div class="card-cadastro" style="height: 400px">
                <div class="right-cadastro">
                    <center>
                        <form class="row g-3" action="alterarusuario" method="POST" style="width: 800px">
                            <div class="col-md-6">
                                <input type="number" name="idUsuario" value="${usuario.id}"placeholder="Informe sua identificacao"/>
                                <label for="inputEmail4" class="form-label" >Nome de Usuário</label>
                                <input class="form-control" type="text" value="${projeto.usuario}" name="usuario" placeholder="Digite o novo nome de usuario" autofocus/>
                            </div>
                            <div class="col-md-6">
                                <label for="inputPassword4" class="form-label">Nome</label>
                                <input class="form-control" type="text" value="${projeto.nome}" name="nome" placeholder="Atualizar o nome"/>   
                            </div>
                            <div class="col-md-6">
                                <label for="inputZip" class="form-label">Senha</label>
                                <input class="form-control" type="password" value="${projeto.senha}" name="senha" placeholder="Digite a nova senha"/>      
                            </div>

                            <div class="col-md-6">
                                <label for="inputCity" class="form-label">E-mail</label>
                                <input class="form-control" type="text" value="${projeto.email}" name="email" placeholder="Digite o novo email"/>   
                            </div>




                            <div class="col-12">
                                <a href="login.jsp"><button type="submit" class="btn" style="background: #fe7f2d" >Alterar</button></a>
                            </div>
                        </form>
                    </center>
                </div>
            </div>         
        </div>  

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

    </body>
</html>
