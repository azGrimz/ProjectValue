<%-- 
    Document   : login
    Created on : May 22, 2023, 3:53:48 PM
    Author     : zorin
--%>

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
      <h1>Seja muito bem-vindo!<br>Project Value</h1>
    </div>
    <div class="right-login">
      <div class="card-login">
        <h1>LOGIN</h1>
        <div class="textfield">
          <label for="usuario">Usuário</label>
          <input type="text" name="usuario">
        </div>
        <div class="textfield">
          <label for="password">Senha</label>
          <input type="password" name="password">
        </div>
        <button class="btn-login">Acessar</button>
        <a href=""><strong>Cadastre-se!</strong></a>
      </div>
    </div>
  </div>
  <%@include file="WEB-INF/jspf/footer.jspf"%>
</body>
</html>