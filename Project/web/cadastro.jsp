
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/estilo.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <title>Cadastro</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf"%>
        
        <div class="main-cadastro">    
        <div class="left-cadastro">
                
            <h1 class="w3-margin w3-wide ">Cadastre-se agora</h1>
            
        </div>
            <!--</div>-->
            
            <div class="card-cadastro">
            <div class="right-cadastro">
            <form class="row g-3" >
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label" >Nome</label>
    <input type="email" class="form-control" id="inputEmail4">
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Nome de Usuário</label>
    <input type="password" class="form-control" id="inputPassword4">
  </div>

 
  <div class="col-md-6">
    <label for="inputCity" class="form-label">E-mail</label>
    <input type="text" class="form-control" id="inputCity">
  </div>
 
  <div class="col-md-6">
    <label for="inputZip" class="form-label">Senha</label>
    <input type="text" class="form-control" id="inputZip">
  </div>
 
  <div class="col-12">
      <a href="login.jsp"><button type="submit" class="btn" style="background: #fe7f2d" >Cadastre-se!</button></a>
  </div>
</form>
            </div>
            </div>      
              </div>  
                
              <%@include file="WEB-INF/jspf/footer.jspf"%>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    </body>
</html>
