<%-- 
    Document   : perfil
    Created on : 8 de jun. de 2023, 19:26:35
    Author     : carla
--%>

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
            <h2>Meus Projetos</h2>

        </div>
        <br>
        <br>        
        <table class="table table-bordered">
            <!-- cabeçalho da tabela -->
            <tr bgcolor=#d8e2dc>
                <th>#</th>
                <th>Projetos</th>
                <th>Prazo</th>
                <th>Valor</th>
                <th>Status</th>
            </tr>
            <!--<tr>
               <th>Código</th>
               <th>Descrição</th>
               <th>Descrição</th>
               <th>Descrição</th>
            </tr>-->
            <!-- detalhes (corpo) da tabela -->
            <tr align="left">
                <td>1</td>
                <td>PizzaPlanet</td>
                <td>3 Semanas</td>
                <td>R$ 3.500,00</td>
                <td>Encerrado</td>
            </tr>
            <tr align="left">
                <td>2</td>
                <td>Estudante em Foco</td>
                <td>4 Semanas</td>
                <td>R$ 4.500,00</td>
                <td>Em Andamento</td>
            </tr>
            <tr align="left">
                <td>3</td>
                <td>CMD Soluções Tecnológicas</td>
                <td>2 Semanas</td>
                <td>R$ 2.800,00</td>
                <td>Em Andamento</td>
            </tr>
        </table>
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
