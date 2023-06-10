<%@page import="classes.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="Resources/js/jquery.js"></script>
        <script src="Resources/js/popper.js"></script>
        <script src="Resources/js/bootstrap.js"></script>

        <link rel="stylesheet" href="Resources/css/bootstrap.css">
        <link rel="stylesheet" href="Resources/css/bootstrap-grid.css">
        <link rel="stylesheet" href="Resources/css/Loja.css">
        <title>Cadastrar novo produto</title>
    </head>

    <body>
        <div class="row">
            <div class="col-md-12">
                <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
                    <a class="navbar-brand" href="loja">Loja</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="listarprojetos">Produtos <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="cadastrarprojeto">Novo Projeto</a>
                            </li>
                        </ul>

                    </div>
                </nav>
            </div>
        </div>
    <body style="background-color: #eee" >
        <div class="centralizar-pagina">
            <div class="row ">
                <div style="margin-top: 5%" class="col-md-12">
                    <div class="col-md-12">
                        <h4 > Cadastrar novo projeto</h4>
                        <form action="cadastrarprojeto" method="post">
                            <input type="hidden" name="idUsuario" value="${usuario.id}" />
                            <div class="form-group">
                                <input class="form-control" type="text" name="nome" placeholder="Digite o nome do produto" autofocus/>
                            </div>
                            <div class="form-group">
                                <input class="form-control" type="number" name="horatrabalhada" placeholder="Digite o valor da hora trabalhada"/>                        
                            </div>
                            <div class="form-group">
                                <input class="form-control" type="number" name="tempodedicado" placeholder="Digite o valor do tempo dedicado no projeto"/>                        
                            </div>  
                            <div class="form-group">
                                <input class="form-control" type="date" name="datainicio"/>                        
                            </div> 
                            <div class="form-group">
                                <input class="form-control" type="date" name="datafim"/>                        
                            </div> 
                            <input  type="submit" class="btn btn-sucess " name="btnEnviar" value="Enviar">

                        </form>

                        <p style="color: red"> ${erro} </p>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
