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
        <title>ProjectValue</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            body,h1,h2,h3,h4,h5,h6 {
                font-family: "Lato", sans-serif
            }
            .w3-bar,h1,button {
                font-family: "Montserrat", sans-serif
            }
            .fa-anchor,.fa-coffee {
                font-size:200px
            }
        </style>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">        
    </head>
    <body>
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">
                    <img src="https://png.pngtree.com/png-vector/20190803/ourlarge/pngtree-calculator-calculation-math-progress-graph-flat-color-icon-v-png-image_1648951.jpg" alt="Logo" width="60" height="48" class="d-inline-block align-text-center">
                    ProjectValue
                </a>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Projetos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Quem somos</a>
                        </li>            
                    </ul>              
                </div>     
                <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                    <a href="cadastro.jsp"><button class="btn btn-primary me-md-2" type="button"> Sign up</button><a/>
                        <a href="login.jsp"><button class="btn btn-outline-primary" type="button">Log in</button></a>               
                </div>
        </nav>
    <head>        
        <style>
            .header {
                height: 500px;
                /*background-color: red; /* For browsers that do not support gradients */
                background-image: linear-gradient(to right, purple, violet, pink);
                text-align: left;
                color: white;
                padding: 135px;


            }
        </style>
        <style>
            #imgpos {
                position:absolute;
                right: 200px;
                top: 165px;
                width: 500px;
                height: 300px;
                padding: 10px;
            }
        </style>

    </head>
    <div class="header">
        <h1 class="w3-margin w3-wide ">Organize seus projetos</h1>
        <h1 class="w3-margin w3-wide ">E deixe seu portifólio</h1>
        <h1 class="w3-margin w3-wide">muito mais atraente!</h1>
        <!--<img src="https://unileao.edu.br/blog/wp-content/uploads/2018/09/remove-online-distractions.jpg"  width="300" height="260" id="imgpos">-->
        <img src="https://img.freepik.com/vetores-gratis/pagina-inicial-do-web-design-dos-desenhos-animados_52683-70880.jpg?q=10&h=200"   id="imgpos">
    </div>

    <style>
        .header1 {
            height: 1px;
            background-color: white;
            margin: 1px;
            text-align: center;
            color: black;
            padding: 1px;
        }
    </style>
    <style>
        .body{
            /*height: 500px;*/
            background-color: white; /* For browsers that do not support gradients */
            top: 50px;
            /*text-align: center;*/
            color: white;
            padding: 300px;
        }
    </style>
    <div class="header1 row g-5">
        <br>
        <br>
        <h1 class="w3-margin w3-wide ">Navegue pelo nosso portifólio</h1>
        <br>
        <h1 class="w3-margin w3-wide ">E conheça nossos projetos</h1>
    </div>

    <section>
        <div class="body">
            <div id="carouselExampleCaptions" class="carousel carousel-dark slide">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="https://i.ytimg.com/vi/-qIKXW6fqF8/maxresdefault.jpg" class="d-block w-100" width="400" height="500">
                        <!--<div class="carousel-caption d-none d-md-block">
                            <h5>First slide label</h5>
                            <p>Some representative placeholder content for the first slide.</p>
                        </div>-->
                    </div>
                    <div class="carousel-item">
                        <img src="https://www.vandelaydesign.com/wp-content/uploads/coroflot.jpg" class="d-block w-100" width="400" height="500" >
                        <!--<div class="carousel-caption d-none d-md-block">
                            <h5>Second slide label</h5>
                            <p>Some representative placeholder content for the second slide.</p>
                        </div>-->
                    </div>
                    <div class="carousel-item">
                        <img src="https://www.hostinger.com/tutorials/wp-content/uploads/sites/2/2021/08/behance-moodboard.webp" class="d-block w-100" width="400" height="500">
                        <!--<div class="carousel-caption d-none d-md-block">
                            <h5>Third slide label</h5>
                            <p>Some representative placeholder content for the third slide.</p>
                        </div>-->
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
    </section>

    <section>
        <div>
            <style>
                .header2 {
                    height: 400px;
                    background-image: linear-gradient(to right, purple, violet, pink);
                    text-align: center;
                    color: white;
                    padding: 135px;
                }
            </style>


            <div class="header2">
                <h2 class="w3-margin w3-wide ">Comece agora</h2> 

                <style>
                    .form-center {
                        display:flex;
                        justify-content: center;
                    }
                </style>
                <div class="form-center">
                    <form class="row g-3" >
                        <div class="col-auto">
                            <label for="inputPassword2" class="visually-hidden">Email</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">

                        </div>

                        <div class="col-auto">
                            <a href="cadastro.jsp"><button class="btn btn-primary me-md-2" type="button"> Inscreva-se!</button><a/>
                        </div>
                    </form>
                </div>
                </section>


                <style>
                    .footer {
                        height: 1px;
                        background-color: purple;
                        /*background-image: linear-gradient(to right, purple, violet, pink);*/
                        text-align: left;
                        color: white;
                        padding: 80px;


                    }
                </style>
                <style>
                    .textfooter{
                        height: 10px;
                        /*top: 50px;*/
                        text-align: center;
                        color: white;


                    }
                </style>
                <style>
                    .iconfooter{
                        /*right: 100px;
                        top: 10px;*/
                        height: 1px;
                        text-align: right;
                        color: white;

                    }
                </style>
                <footer class="footer">
                    <svg xmlns="http://www.w3.org/2000/svg" width="120" height="30" fill="currentColor" class="bi bi-amd" viewBox="0 0 16 16">
                    <path d="m.334 0 4.358 4.359h7.15v7.15l4.358 4.358V0H.334ZM.2 9.72l4.487-4.488v6.281h6.28L6.48 16H.2V9.72Z"/>
                    </svg>
                    <div class="textfooter">
                        <p>© Copyright, ProjectValue</p>
                    </div>
                    <div class="iconfooter">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-github" viewBox="0 0 16 16">
                        <path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.012 8.012 0 0 0 16 8c0-4.42-3.58-8-8-8z"/>
                        </svg>
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-twitter" viewBox="0 0 16 16">
                        <path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"/>
                        </svg>
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                        <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/>
                        </svg>
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-instagram" viewBox="0 0 16 16">
                        <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z"/>
                        </svg>
                    </div>
                </footer>


                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>     
                </body>
                </html>
