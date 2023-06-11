<%@page import="model.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">        

        <title>Cadastrar novo projeto</title>
    </head>





    <body style="background-color: #eee" >
        <%@include file="WEB-INF/jspf/navbarusuario.jspf"%>
    <center>
        <div class="card-login" style="margin-top: 120px; margin-bottom: 120px; color: white; width: 40%;">

            <h4 style="padding-bottom:25px" > Cadastrar novo projeto</h4>
            <form action="cadastrarprojeto" method="post">
                <input type="hidden" name="idUsuario" value="${usuario.id}" />
                <div class="form-group" style="padding-bottom:25px; width:300px">
                    <input class="form-control" type="text" name="nome" placeholder="Digite o nome do projeto" autofocus/>
                </div>
                <div class="form-group" style="padding-bottom:25px">
                    <input class="form-control" type="number" name="horatrabalhada" placeholder="Digite o valor da hora trabalhada"/>                        
                </div>
                <div class="form-group" style="padding-bottom:25px">
                    <input class="form-control" type="number" name="tempodedicado" placeholder="Digite o valor do tempo dedicado"/>                        
                </div>  
                <div class="form-group" style="padding-bottom:25px">
                    <input class="form-control" type="date" name="datainicio"/>                        
                </div> 
                <div class="form-group" style="padding-bottom:25px">
                    <input class="form-control" type="date" name="datafim"/>                        
                </div> 
                <input  type="submit" class="btn btn-sucess " style="background: #fe7f2d; color:white" name="btnEnviar" value="Enviar">
            </form>
        </div>
    </center> 
    <p style="color: red"> ${erro} </p>
    

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>     

</body>
</html>
