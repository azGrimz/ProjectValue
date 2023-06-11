
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/style.css">
  <title>Login</title>
</head>
<body>
    <%@include file="WEB-INF/jspf/navbar.jspf"%>
  <div class="main-login">
    <div class="left-login">
      <h1>Seja muito bem-vindo!<!--<br>Project Value--></h1>
    </div>
    <div class="right-login">
      <div class="card-login">
        <!--<h1>LOGIN</h1>-->
                <form action="login" method="POST">

        <div class="textfield">
          <label for="usuario">Usuário</label>
          <input type="text" name="usuario" value="${param.usuario}" placeholder="Usuário" autofocus>
        </div>
        <div class="textfield">
          <label for="password">Senha</label>
          <input type="password" name="senha" placeholder="Senha">      
        </div>
        <br>
        <a href="projetos.jsp"><button type="submit" class="btn" style="background: #fe7f2d" >Acessar</button></a>
        <br>
        <a href="cadastro.jsp"><button type="submit" class="btn" style="background: #fe7f2d" >Cadastre-se!</button></a>
        <!--<a href="projetos.jsp"><button class="btn-login" style="background: #ff9f1c">Acessar</button></a>
        <a href="cadastro.jsp"><button class="btn-login" style="background: #ff9f1c">Cadastre-se</button></a>-->
        <!--<a href=""><strong>Cadastre-se!</strong></a>-->
                </form>

      </div>
    </div>
  </div>
  
</body>
</html>