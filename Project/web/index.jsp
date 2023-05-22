<%-- 
    Document   : index.jsp
    Created on : May 22, 2023, 2:50:52 PM
    Author     : zorin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">        
    </head>
    <body>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid">
             <a class="navbar-brand" href="#">
            <img src="https://img1.gratispng.com/20180715/ohc/kisspng-java-development-kit-software-development-kit-comp-programming-language-icon-5b4b9cb1bbcd03.5052416115316819697692.jpg" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
            Bootstrap
            </a>
          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Features</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Pricing</a>
              </li>            
            </ul>              
          </div>     
            <div class="d-grid gap-2 d-md-flex justify-content-md-end">
               <a href="cadastro.jsp"><button class="btn btn-primary me-md-2" type="button"> Crie sua conta</button><a/>
               <a href="login.jsp"><button class="btn btn-outline-primary" type="button">Entrar</button></a>
            </div>
        </div>
    </nav>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>     
    </body>
</html>
